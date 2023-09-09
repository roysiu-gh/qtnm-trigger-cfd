import time
import numpy as np

from default_constants import *
from algorithms import *


class SignalData(object):
    def __init__(self,
                 time,
                 signal,
                 truth_data=None,

                 # filter_alg=lp_filter_iir,
                 filter_alg=lp_filter_iir_extracted,
                 cfd_alg=cfd,
                 zero_detector_alg=zero_detector2,
                 run_discriminator_twice=False,

                 slice_start=0,
                 slice_end=None,  # None sends the slice to the end
                 amp_power=16,
                 filter_alg_args={
                     "DECAY_PART": DECAY_PART,
                     "window_width": WINDOW_WIDTH,
                     "alpha": ALPHA,
                 },
                 # decay_part=DECAY_PART,
                 delay_samples=DELAY_SAMPLES,
                 inv_frac=INV_FRAC,
                 tolerance=TOLERANCE,
                 ):
        self.all_t = np.array(time)
        self.all_sig = np.array(signal)
        if len(time) != len(signal):
            raise IndexError(f"time and signal length mismatch: {len(time)} and {len(signal)}")

        self.filter = filter_alg
        self.cfd = cfd_alg
        self.zd = zero_detector_alg
        self.run_discriminator_twice = run_discriminator_twice

        if truth_data is not None:
            if len(time) != len(truth_data):
                raise IndexError(f"signal and truth_data length mismatch: {len(signal)} and {len(truth_data)}")
            self.all_truth_data = np.array(truth_data)
        else:
            self.all_truth_data = np.zeros_like(self.all_t)

        if slice_end is None:
            slice_end = len(time) - 1
        self.slice_end = slice_end

        self.all_computed_performances = []

        self.slice_start = slice_start
        self.slice_end = slice_end

        self.filter_alg_args = filter_alg_args
        # self.decay_part = decay_part
        self.delay_samples = delay_samples
        self.inv_frac = inv_frac
        self.amp_power = amp_power
        self.tolerance = tolerance
        self.sampling_period = self.all_t[1] - self.all_t[0]  # Assumes constant sample time-spacing

        self.regenerate()

    def __len__(self):
        return self.slice_end - self.slice_start

    def regenerate(self):
        self.slice()
        self.run_amp()
        self.run_fil1()
        self.run_cfd1()
        self.run_fil2()
        if self.run_discriminator_twice:
            self.run_cfd2()###
            self.run_fil3()###
        self.run_zd()

    def slice(self):
        """Note that this affects computation as the preceding calculations aren't taken into account."""
        self.t = self.all_t[self.slice_start:self.slice_end]
        self.sig = self.all_sig[self.slice_start:self.slice_end]
        self.truth_data = self.all_truth_data[self.slice_start:self.slice_end]

    def run_amp(self):
        self.sig_amp = (self.sig * (2 ** self.amp_power)).astype(int)
        return self.sig_amp

    def run_fil1(self):
        filtered = self.filter(self.sig_amp, **self.filter_alg_args)
        self.sig_fil1 = np.array(list(filtered))
        return self.sig_fil1

    def run_cfd1(self):
        cfd_done = self.cfd(self.sig_fil1, inv_frac=self.inv_frac, delay_samples=self.delay_samples, )
        self.sig_cfd1 = np.array(list(cfd_done))
        return self.sig_cfd1

    def run_fil2(self):
        filtered = self.filter(self.sig_cfd1, **self.filter_alg_args)
        self.sig_fil2 = np.array(list(filtered))
        return self.sig_fil2

    def run_cfd2(self):
        cfd_done = self.cfd(self.sig_fil2, inv_frac=self.inv_frac, delay_samples=self.delay_samples, )
        self.sig_cfd2 = np.array(list(cfd_done))
        return self.sig_cfd2

    def run_fil3(self):
        filtered = self.filter(self.sig_cfd2, **self.filter_alg_args)
        self.sig_fil3 = np.array(list(filtered))
        return self.sig_fil3

    def run_zd(self):
        if self.run_discriminator_twice:
            zd_done = self.zd(self.sig_fil3)
        else:
            zd_done = self.zd(self.sig_fil2)
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

        tolerance_samples = int(self.tolerance / self.sampling_period)

        total_signals, hits = compare_data_to_success_condition(output_to_analyse, self.truth_data,
                                                                tolerance_samples=tolerance_samples)
        total_triggers, misfires_complement = compare_data_to_success_condition(self.truth_data, output_to_analyse,
                                                                                tolerance_samples=tolerance_samples)

        misfires = total_triggers - misfires_complement

        if total_signals == 0:
            hitrate = None
        else:
            hitrate = hits / total_signals

        if total_triggers == 0:
            misfire_rate = None
        else:
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
                # Only run CFD1, LP filter 2, CFD2, and ZD, where self.regenerate() would also run the amplifier and filter
                # self.run_cfd1()
                # self.run_fil2()
                # # self.run_cfd2()
                # # self.run_fil3()
                # self.run_zd()
                self.regenerate()
                all_performances.append(self.get_current_performance(tolerance=self.tolerance))
            if verbose: print(".", end="")

        if verbose:
            end_wall = time.time()
            end_cpu = time.process_time()
            print()
            print("Wall time:", human_time(end_wall - start_wall))
            print("CPU time:", human_time(end_cpu - start_cpu))

        return all_performances

    def get_sensitivity_specificity_v1(self, tolerance=None):
        self.tolerance = tolerance or self.tolerance

        return get_sensitivity_specificity_compiled_v1(self.output, self.truth_data,
                                                       section_time=SECTION_TIME,
                                                       sampling_period=self.sampling_period,
                                                       tolerance=self.tolerance, )

    def get_roc_curve_data(self, inv_frac_vals, delay_samples_vals, tolerance=None, verbose=False):
        self.tolerance = tolerance or self.tolerance
        if verbose:
            print(self.tolerance)
            start_wall = time.time()
            start_cpu = time.process_time()
        all_performances = []

        if verbose: print("." * len(delay_samples_vals))
        for delay_samples in delay_samples_vals:
            self.delay_samples = delay_samples
            for inv_frac in inv_frac_vals:
                self.inv_frac = inv_frac
                # # Do manually, self.regenerate() would also run the amplifier and filter
                # self.run_cfd1()
                # self.run_fil2()
                # self.run_cfd2()
                # self.run_fil3()
                # self.run_zd()
                self.regenerate()
                sensitivity, specificity = self.get_sensitivity_specificity_v1(tolerance=self.tolerance)
                all_performances.append({"sensitivity": sensitivity,
                                         "specificity": specificity,
                                         "inv_frac": inv_frac,
                                         "delay_samples": delay_samples,
                                         })
            if verbose: print(".", end="")

        if verbose:
            end_wall = time.time()
            end_cpu = time.process_time()
            print()
            print("Wall time:", human_time(end_wall - start_wall))
            print("CPU time:", human_time(end_cpu - start_cpu))

        return all_performances
