import time
import numpy as np

from default_constants import *
from algorithms import lp_filter, cfd, zero_detector2, human_time, get_performance_compiled


class SignalData(object):
    def __init__(self,
                 data,
                 truth_data=None,

                 filter_alg=lp_filter,
                 cfd_alg=cfd,
                 zero_detector_alg=zero_detector2,

                 slice_start=0,
                 slice_end=None,  # None sends the slice to the end
                 amp_power=16,
                 delay_samples=DELAY_SAMPLES,
                 inv_frac=INV_FRAC,
                 tolerance=TOLERANCE,
                 ):
        self.all_t = np.array( data[0] )
        self.all_sig = np.array( data[1] )

        self.filter = filter_alg
        self.cfd = cfd_alg
        self.zd = zero_detector_alg

        if truth_data is not None:
            if len(data[0]) != len(truth_data):
                raise IndexError(f"data[0] and truth_data length mismatch: {len(data[0])} and {len(truth_data)}")
            self.all_truth_data = np.array( truth_data )
        else:
            self.all_truth_data = np.zeros_like(self.all_t)

        if slice_end is None:
            slice_end = len(data[0])
        self.slice_end = slice_end

        self.all_computed_performances = []

        self.slice_start = slice_start
        self.slice_end = slice_end
        self.delay_samples = delay_samples
        self.inv_frac = inv_frac
        self.amp_power = amp_power
        self.tolerance = tolerance

        self.regenerate()

    def __len__(self):
        return self.slice_end - self.slice_start

    def regenerate(self):
        self.slice()
        self.run_amp()
        self.run_fil()
        self.run_cfd()
        self.run_zd()

    def slice(self):
        """Note that this affects computation as the preceding calculations aren't taken into account."""
        self.t = self.all_t[self.slice_start:self.slice_end]
        self.sig = self.all_sig[self.slice_start:self.slice_end]
        self.truth_data = self.all_truth_data[self.slice_start:self.slice_end]

    def run_amp(self):
        self.sig_amp = ( self.sig * (2 ** self.amp_power) ).astype(int)
        return self.sig_amp

    def run_fil(self):
        filtered = self.filter(self.sig_amp)
        self.sig_fil = np.array(list(filtered))
        return self.sig_fil

    def run_cfd(self):
        cfd_done = self.cfd(self.sig_fil, inv_frac=self.inv_frac, delay_samples=self.delay_samples, )
        self.sig_cfd = np.array(list(cfd_done))
        return self.sig_cfd

    def run_zd(self):
        zd_done = self.zd(self.sig_cfd)
        self.output = np.array(list(zd_done))
        return self.output

    def set_truth_data(self, truth_data):
        self.truth_data = truth_data
        self.slice()

    def get_current_performance(self, tolerance=None, output_to_analyse=None, verbose=False):
        """
        If output_to_analyse is None, use self.output. This is so that get_performance_parallel() can
        run without changing instance variables and affecting other processes.
        --- make this a class method?
        """
        self.tolerance = tolerance or self.tolerance
        if output_to_analyse is None:
            output_to_analyse = self.output

        test_parameters = {}

        spacing = self.all_t[1] - self.all_t[0]  # Assumes constant sample time-spacing
        tolerance_samples = int(self.tolerance / spacing)

        total_signals = np.sum(self.truth_data)
        total_triggers = np.sum(output_to_analyse)

        # Convert first two parameters to np.array as pandas.Series not compatible with numba
        # Note typed.List is MUCH slower! Not sure why
        hits, misfires = get_performance_compiled(output_to_analyse=output_to_analyse,
                                                  truth_data=self.truth_data,
                                                  tolerance_samples=tolerance_samples,
                                                  )

        hitrate = hits / total_signals
        misfire_rate = misfires / total_triggers

        if verbose:
            print("self.delay_samples:", self.delay_samples)
            print("self.inv_frac:", self.inv_frac)
            print("tolerance:", self.tolerance)
            print("tolerance_samples:", tolerance_samples)
            print("total_signals:", total_signals)
            print("total_triggers:", total_triggers)
            print("hits:", hits)
            print("misfires:", misfires)
            print("misfire_rate:", misfire_rate)  # Possible misleading statistic
            print()

        # Record test parameters and outputs
        test_parameters["delay_samples"] = self.delay_samples
        test_parameters["inv_frac"] = self.inv_frac
        test_parameters["tolerance"] = self.tolerance
        test_parameters["tolerance_samples"] = tolerance_samples
        test_parameters["total_signals"] = total_signals
        test_parameters["total_triggers"] = total_triggers
        test_parameters["hits"] = hits
        test_parameters["hitrate"] = hitrate
        test_parameters["misfires"] = misfires
        test_parameters["misfire_rate"] = misfire_rate

        return test_parameters

    # @njit
    def get_performance(self, inv_frac_vals, delay_samples_vals, tolerance=None, verbose=False):
        self.tolerance = tolerance or self.tolerance
        if verbose:
            start_wall = time.time()
            start_cpu = time.process_time()
        all_performances = []

        if verbose: print("." * len(delay_samples_vals))
        for delay_samples in delay_samples_vals:
            self.delay_samples = delay_samples
            for inv_frac in inv_frac_vals:
                self.inv_frac = inv_frac
                # Only run CFD and ZD, where self.regenerate() would also fun the amplifier and filter
                self.run_cfd()
                self.run_zd()
                all_performances.append(self.get_current_performance(tolerance=self.tolerance))
            if verbose: print(".", end="")

        if verbose:
            end_wall = time.time()
            end_cpu = time.process_time()
            print()
            print("Wall time:", human_time(end_wall - start_wall))
            print("CPU time:", human_time(end_cpu - start_cpu))

        return all_performances
