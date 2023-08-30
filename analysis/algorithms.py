# Simulated functions written as generators to closer replicate the description in Verilog

import numpy as np
from numba import jit

import pkg_resources

__requires__ = "numpy==1.24"  # For numba
pkg_resources.require(__requires__)

TIME_DURATION_UNITS = (
    ("week", 60 * 60 * 24 * 7),
    ("day", 60 * 60 * 24),
    ("hour", 60 * 60),
    ("min", 60),
    ("sec", 1)
)


def human_time(seconds):
    seconds = int(seconds)
    if seconds == 0:
        return 'inf'
    parts = []
    for unit, div in TIME_DURATION_UNITS:
        amount, seconds = divmod(int(seconds), div)
        if amount > 0:
            parts.append(f"{amount} {unit}{'' if amount == 1 else 's'}")
    return ", ".join(parts)


@jit(nopython=True)
def lp_filter(x_all, DECAY_FULL_POWER=10, DECAY_PART=900):
    """ Low-pass IIR filter simulation of Verilog implementation
    Write as a generator to simulate verilog functionality
    Default DECAY_FULL_POWER = 10 so that DECAY_FULL = 1024
    Cannot parallelise
    """
    a = (2 ** DECAY_FULL_POWER) - DECAY_PART
    b = DECAY_PART

    last_y = 0

    for x in x_all:  # always @ (posedge clk)
        y = (a * x) + (b * last_y)
        y = y >> DECAY_FULL_POWER  # Arithmetic shift to divide by DECAY_FULL
        last_y = y
        yield y


@jit(nopython=True)
def cfd(x_all, inv_frac=3, delay_samples=100):
    """Simulation of the constant fraction discriminator (CFD) described in Verilog.
    As normally described, the parameters are `fraction` and `delay`.
    The parameter `inv_frac` is `1/fraction`, so can multiply the conjugate variable
        rather than divide (which is easier to synthesise).
    The parameter `delay_samples` is `delay * sample_rate`.
    """
    buffer = np.zeros(delay_samples)  # In effect delays the input

    for x in x_all:  # Simulate `always @ (posedge clk)`
        # Buffer update and shift
        for i in range(delay_samples - 2, 0 - 1, -1):
            buffer[i + 1] = buffer[i]
        buffer[0] = x

        # CFD calculation
        working = buffer[delay_samples - 1]  # Delay
        working = - working * inv_frac  # Negate and augment (equivalent to attenuating x)
        y = x + working
        yield y


@jit(nopython=True, parallel=True)
def zero_detector(x_all):
    sign = 0
    for x in x_all:  # Simulate `always @ (posedge clk)`
        # Two's complement: MSB is 0 for non-negatives (including 0), and 1 for negatives
        last_sign = sign
        sign = 0 if x >= 0 else 1
        # In Verilog would be a continuous assignment `assign y = sign ^ last_sign` declared at the beginning
        y = sign ^ last_sign
        yield y


@jit(nopython=True)
def zero_detector2(x_all):
    """A variation of `zero_detector()` that only detects rising edges of zero crossings.
    NB: using two's complement, so MSB is 0 for non-negatives (including 0), and 1 for negatives
    Cannot parallelise
    """
    sign = 0
    for x in x_all:  # Simulate `always @ (posedge clk)`
        last_sign = sign
        # In Verilog would be a continuous assignment `assign y = ???` declared at the beginning
        sign = 0 if x >= 0 else 1
        y = sign & ~last_sign  # NB using two's complement, so need -ve & +ve i.e. 1 & 0
        yield y


# Performance analysis functions


@jit(nopython=True)  # Numba can't parallelise
def compare_data_to_success_condition(iterate_through, search_for, tolerance_samples):
    """Loop through iterate_through to count values against the success condition search_for
    within tolerance_samples. Note for counting misfires this returns the complement."""
    length = len(iterate_through)

    total = 0  # Already looping through list so probably faster than calling np.sum()
    successes = 0
    for idx, val in enumerate(search_for):
        if not val:
            continue
        total += 1
        lower = max(0, idx - tolerance_samples)
        upper = min(idx + tolerance_samples, length)
        for search_idx in range(lower, upper):
            if iterate_through[search_idx]:
                successes += 1
                break
        else:
            continue

    return total, successes
