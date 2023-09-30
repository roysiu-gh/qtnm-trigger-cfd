"""Most functions that could be written in Verilog are written here as generators to closer replicate Verilog
description. Numba compilation is used to speed up some functions. `XXX_wrapper` functions return the corresponding
function with all parameters preset, so that only the input series `x_all` is required. `XXX_extracted` functions
exist because Numba doesn't support the **kwargs construct. They ignore arguments irrelevant (hard-coded) to the
wrapped functions, and return the output of the wrapped function. The type hint `NDArray[Shape["1"],
np.dtype[np.integer]]` means a 1D Numpy array of Numpy integers."""
from typing import Iterator, Callable

import numpy as np
import pkg_resources
from numba import jit

__requires__ = "numpy==1.24"  # For numba

from default_constants import *

pkg_resources.require(__requires__)

TIME_DURATION_UNITS = (
    ("week", 60 * 60 * 24 * 7),
    ("day", 60 * 60 * 24),
    ("hour", 60 * 60),
    ("min", 60),
    ("sec", 1)
)


def human_time(seconds: float) -> str:
    """Convert seconds to a human-readable time duration."""
    seconds = int(seconds)
    if seconds == 0:
        return 'inf'
    parts = []
    for unit, div in TIME_DURATION_UNITS:
        amount, seconds = divmod(int(seconds), div)
        if amount > 0:
            parts.append(f"{amount} {unit}{'' if amount == 1 else 's'}")
    return ", ".join(parts)


# @jit(nopython=True)
def no_filter(x_all: IntArray, *args, **kwargs) -> Iterator[int]:
    """The identity filter.
    
    :param x_all: The input signal. 
    :param args: Ignored.
    :param kwargs: Ignored.
    :return: The input unchanged.
    """
    for x in x_all:
        yield x


@jit(nopython=True)
def lp_filter_iir(x_all: IntArray, decay_full_power: int = 10, decay_part: int = 900) -> Iterator[int]:
    """Low-pass single-pole IIR filter simulation of Verilog implementation. Written as a generator to simulate
    verilog functionality. This follows the usual algorithm, to avoid use of floating points, the normal parameter
    `decay` is split into a numerator and denominator so `decay = decay_part / decay_full'. Instead of multiplying by `decay`, the signal is multiplied by
    the numerator then divided by the denominator. The denominator must be a power of 2 so that we can use an
    arithmetic shift for fast division without use of floating points.
    Default `decay_full_power = 10` so that `decay_full = 2 ** decay_full_power = 1024`.
    Cannot parallelise.

    :param x_all: The input signal. 
    :param decay_full_power: The power (of 2) of the denominator of `decay`.
    :param decay_part: The numerator of `decay`.
    :return: Filtered result.
    """
    a = (2 ** decay_full_power) - decay_part
    b = decay_part

    last_y = 0

    for x in x_all:  # always @ (posedge clk)
        y = (a * x) + (b * last_y)
        y = y >> decay_full_power  # Arithmetic shift to divide by decay_full
        last_y = y
        yield y


def lp_filter_iir_extracted(x_all: IntArray, **kwargs) -> Iterator[int]:
    """An 'extracted' wrapper for lp_filter_iir()."""
    relevant_kwargs = {}
    if "decay_full_power" in kwargs:
        relevant_kwargs["decay_full_power"] = kwargs["decay_full_power"]
    if "decay_part" in kwargs:
        relevant_kwargs["decay_part"] = kwargs["decay_part"]

    for y in lp_filter_iir(x_all, **relevant_kwargs):
        yield y


def lp_filter_iir_wrapper(decay_full_power: int = 10, decay_part: int = 900) -> Callable:
    """Return an instance of lp_filter_iir() with decay_full_power and decay_part preset."""

    @jit(nopython=True)
    def inner(x_all):
        return lp_filter_iir(x_all, decay_full_power=decay_full_power, decay_part=decay_part)

    return inner


def sma_convolve(x_all: IntArray, window_width: int = 100) -> FloatArray:
    """Simple moving average filter using convolution, NOT Verilog implementation.

    :param x_all: The input signal. 
    :param window_width: The window size in samples.
    :return: Filtered result.
    """
    return np.convolve(x_all, np.ones(window_width), "same") / window_width


def sma_convolve_extracted(x_all: IntArray, **kwargs) -> Iterator[int]:
    """An 'extracted' wrapper for sma_convolve()."""
    relevant_kwargs = {}
    if "window_width" in kwargs:
        relevant_kwargs["window_width"] = kwargs["window_width"]

    for y in sma_convolve(x_all, **relevant_kwargs):
        yield y


def wma_linear_convolve(x_all: IntArray, window_width: int = 100) -> FloatArray:
    """(Linearly) weighted moving average filter.

    :param x_all: The input signal.
    :param window_width: The window size in samples.
    :return: Filtered result.
    """
    weights = np.arange(window_width)
    total = (window_width - 1) * window_width / 2  # n -> n-1
    return np.convolve(x_all, weights, "same") / total


def wma_linear_convolve_extracted(x_all: IntArray, **kwargs) -> Iterator[int]:
    """An 'extracted' wrapper for wma_linear_convolve()."""
    relevant_kwargs = {}
    if "window_width" in kwargs:
        relevant_kwargs["window_width"] = kwargs["window_width"]

    for y in wma_linear_convolve(x_all, **relevant_kwargs):
        yield y


def ema_convolve(x_all: IntArray, window_width: int = 500, alpha: float = 0.05) -> IntArray:
    """Exponentially weighted moving average filter. Formula is e ** (alpha * x).

    :param x_all: The input signal.
    :param window_width: The window size in samples. 
    :param alpha: As in formula.
    :return: Filtered result.
    """
    weights = np.exp(np.arange(0, alpha * window_width, alpha))
    total = np.sum(weights)
    return np.convolve(x_all, weights, "same") / total


def ema_convolve_extracted(x_all: IntArray, **kwargs) -> Iterator[int]:
    """An 'extracted' wrapper for ema_convolve()."""
    relevant_kwargs = {}
    if "window_width" in kwargs:
        relevant_kwargs["window_width"] = kwargs["window_width"]
    if "alpha" in kwargs:
        relevant_kwargs["alpha"] = kwargs["alpha"]

    for y in ema_convolve(x_all, **relevant_kwargs):
        yield y


def ema_wrapper(window_width: int = 500, alpha: float = 0.05) -> Callable:
    """Return an instance of ema_convolve() with n and alpha preset."""

    def inner(x_all):
        return ema_convolve(x_all, window_width=window_width, alpha=alpha)

    return inner


@jit(nopython=True)
def cfd(x_all: IntArray, inv_frac: int = 3, delay_samples: int = 100) -> Iterator[int]:
    """Simulation of the constant fraction discriminator (CFD) described in Verilog.
    As normally described, the parameters are `fraction` and `delay`.
    The parameter `inv_frac` is `1/fraction`, so can multiply the conjugate variable
        rather than divide (which is easier to synthesise).
    Note the parameter `delay_samples = delay * sample_rate`.
    """
    buffer = np.zeros(delay_samples)  # In effect delays the input

    for x in x_all:  # Simulate `always @ (posedge clk)`
        # Buffer update and shift
        for i in range(delay_samples - 2, 0 - 1, -1):
            buffer[i + 1] = buffer[i]
        buffer[0] = x

        # CFD calculation
        delayed = buffer[delay_samples - 1]  # Delay
        # Use of int() in following line just for casting, result SHOULD be int anyway (i.e. int() not in Verilog code)
        y = int(x - delayed * inv_frac)
        yield y


@jit(nopython=True)
def cfd_normalised(x_all: IntArray, inv_frac: int = 3, delay_samples: int = 100) -> Iterator[int]:
    """Make cfd() output smaller ('normalised') to fit on graph for InteractiveTrigger."""
    for y in cfd(x_all, inv_frac, delay_samples):
        yield int(y / inv_frac)  # Need to cast to int so that bit-shift (requires int) in lp_filter_iir() works


@jit(nopython=True)
def cfd2(x_all: IntArray, inv_frac: int = 3, delay_samples: int = 100) -> Iterator[int]:
    """Alternate version (2) of cfd(), are essentially equivalent."""
    buffer = np.zeros(delay_samples)  # In effect delays the input

    for x in x_all:  # Simulate `always @ (posedge clk)`
        # Buffer update and shift
        for i in range(delay_samples - 2, 0 - 1, -1):
            buffer[i + 1] = buffer[i]
        buffer[0] = x

        # CFD calculation
        delayed = buffer[delay_samples - 1]  # Delay
        # Use of int() in following line just for casting, result SHOULD be int anyway (i.e. int() not in Verilog)
        y = int(delayed * inv_frac - x)
        yield y


@jit(nopython=True)
def cfd3(x_all: IntArray, inv_frac: int = 3, delay_samples: int = 100) -> Iterator[int]:
    """Alternate version (3) of cfd(), are essentially equivalent."""
    buffer = np.zeros(delay_samples)  # In effect delays the input

    for x in x_all:  # Simulate `always @ (posedge clk)`
        # Buffer update and shift
        for i in range(delay_samples - 2, 0 - 1, -1):
            buffer[i + 1] = buffer[i]
        buffer[0] = x

        # CFD calculation
        delayed = buffer[delay_samples - 1]  # Delay
        # Use of int() in following line just for casting, result SHOULD be int anyway (i.e. int() not in Verilog)
        y = int(- x * inv_frac + delayed)
        yield y


def diff(x_all: IntArray) -> IntArray:
    """A discriminator using the difference between neighbouring values. Essentially useless."""
    return np.pad(np.diff(x_all), (0, 1)) * 10


# @jit(nopython=True)
def mad_discriminator(x_all: IntArray,
                      window_width: int = WINDOW_WIDTH,
                      madt: float = 2.0,
                      *args, **kwargs) -> Iterator[int]:
    """A discriminator which triggers when the signal exceeds a preset Mean Average Deviation from the (simple
    moving) mean. Can probably program in Verilog.

    :param x_all: The input signal.
    :param window_width: The window size in samples.
    :param madt: The Mean Absolute Deviation threshold.
    :param args: Ignored.
    :param kwargs: Ignored.
    :return: <>?
    """
    n = window_width

    mean_buffer = np.zeros(n)
    deviation_buffer = np.zeros(n)

    for x in x_all:
        # Mean buffer update and shift
        for i in range(n - 2, 0 - 1, -1):
            mean_buffer[i + 1] = mean_buffer[i]
        mean_buffer[0] = x / n

        mean = np.sum(mean_buffer)

        # Deviation buffer update and shift
        for i in range(n - 2, 0 - 1, -1):
            deviation_buffer[i + 1] = deviation_buffer[i]
        deviation_buffer[0] = np.abs(x - mean) / n

        mad = np.sum(deviation_buffer)  # Possible to do without np.sum() in future version

        # Convert two thresholds either side or mean into one using abs()
        # yield np.abs(mean) - mad * madt, mad
        yield np.abs(mean) - mad * madt


@jit(nopython=True, parallel=True)
def zero_detector(x_all: IntArray) -> Iterator[int]:
    """Finds positions where the signal is either rising or falling through zero using XOR on the most significant bit.
    Note we use two's complement, so MSB is 0 for non-negatives (including 0), and 1 for negatives.

    :param x_all: The input signal.
    :return: The zero positions.
    """
    sign = 0
    for x in x_all:  # Simulate `always @ (posedge clk)`
        # Two's complement: MSB is 0 for non-negatives (including 0), and 1 for negatives
        last_sign = sign
        sign = 0 if x >= 0 else 1
        # In Verilog would be a continuous assignment `assign y = sign ^ last_sign` declared at the beginning
        y = sign ^ last_sign
        yield y


@jit(nopython=True)
def zero_detector2(x_all: IntArray) -> Iterator[int]:
    """A variation of `zero_detector()` that only detects rising zero crossings.
    Note we use two's complement, so MSB is 0 for non-negatives (including 0), and 1 for negatives.

    :param x_all: The input signal.
    :return: The zero positions.
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
def compare_data_to_success_condition(iterate_through: IntArray, search_for: BoolArray,
                                      tolerance_samples: int) -> tuple[int, int]:
    """Loop through `iterate_through` to count values against the success condition `search_for`
    within `tolerance_samples`. Note for counting misfires this returns the complement.
    If `tolerance_samples` passed as `None`, search whole slice (maximum tolerance).
    """
    length = len(iterate_through)
    if tolerance_samples is None:
        tolerance_samples = length

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
        # else:
        #     continue

    return total, successes


@jit(nopython=True)  # Numba can't parallelise
def get_sensitivity_specificity_compiled_v1(trigger_output: IntArray, truth_data: BoolArray,
                                            section_time: float, sampling_period: float,
                                            tolerance: float = TOLERANCE) -> tuple[float, float]:
    section_samples = int(section_time / sampling_period)
    tolerance_samples = int(tolerance / sampling_period)

    total_signals = 0
    total_true_pos = 0
    total_nonsignals = 0
    total_true_neg = 0

    # section_samples = int(section_samples)
    number_of_sections = divmod(len(trigger_output), section_samples)[0]
    for section_number in range(number_of_sections):
        section_start = section_number * section_samples
        section_end = (section_number + 1) * section_samples
        section_output = trigger_output[section_start: section_end]
        section_truth_data = truth_data[section_start: section_end]

        # The vars in the next line are ints, but treat as bools because only care if nonzero
        signal_exists, triggered_within_tolerance = compare_data_to_success_condition(
            section_output, section_truth_data, tolerance_samples=tolerance_samples)

        if signal_exists:
            total_signals += 1
            if triggered_within_tolerance:
                total_true_pos += 1
        elif not signal_exists:
            total_nonsignals += 1
            # Need to see if triggered anywhere in slice, not just within the tolerance
            # triggered_at_all = np.sum(section_output)
            # if not triggered_at_all:
            triggers_in_section = np.sum(section_output)
            if triggers_in_section == 0:
                total_true_neg += 1

    if total_signals == 0:
        sensitivity = None
    else:
        sensitivity = total_true_pos / total_signals

    if total_nonsignals == 0:
        specificity = None
    else:
        specificity = total_true_neg / total_nonsignals

    return sensitivity, specificity
