from default_constants import *
from algorithms import *

class SignalData(object):
    def __init__(self,
                 data,
                 truth_data=None,

                 filter_alg=LP_filt,
                 cfd_alg=CFD,
                 zero_detector_alg=zero_detector,

                 slice_start=0,
                 slice_end=None,  # None sends the slice to the end
                 delay_samples=DELAY_SAMPLES,
                 inv_frac=INV_FRAC,
                 amp_power=16,
                 ):
        self.all_t = data[0]
        self.all_sig = data[1]

        self.filter = filter_alg
        self.cfd = cfd_alg
        self.zd = zero_detector_alg

        if truth_data is not None:
            if len(data[0]) != len(truth_data):
                # raise IndexError(f"data[0] and truth_data length mismatch: { len(data[0]) } and { len(truth_data) }")
                print("NOPE")
                return None
            self.all_truth_data = truth_data
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

        self.regenerate()

    def __len__(self):
        # return len(self.t)
        return self.slice_end - self.slice_start

    def regenerate(self):
        self.slice()
        self.run_amp()
        self.run_fil()
        self.run_cfd()
        self.run_zd()

    def slice(self):
        self.t = self.all_t[self.slice_start:self.slice_end]
        self.sig = self.all_sig[self.slice_start:self.slice_end]
        self.truth_data = self.all_truth_data[self.slice_start:self.slice_end]

    def run_amp(self):
        self.sig_amp = [int(i * 2 ** 16) for i in self.sig]

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

    def get_zero_data(self):
        bar_t = []
        bar_z = []
        for index, item in enumerate(self.output):
            if item != 0:
                bar_t.append(self.t[index])
                bar_z.append(item)
        return bar_t, bar_z

    def set_truth_data(self, truth_data):
        self.truth_data = truth_data
        self.slice()

    def get_inv_frac_performance(self, tolerance, output_to_analyse=None, verbose=False):
        """
        If output_to_analyse is None, use self.output. This is so that get_performance_parallel() can
        run without changing instance variables and affecting other processes.
        --- make this a class method?
        """
        if output_to_analyse is None:
            output_to_analyse = self.output

        test_parameters = {}

        spacing = self.all_t[1] - self.all_t[0]  # Assumes constant sample time-spacing
        tolerance_samples = int(tolerance / spacing)

        total_signals = np.sum(self.truth_data)
        total_triggers = np.sum(output_to_analyse)

        hits = 0
        for idx, val in enumerate(self.truth_data):
            if not val:
                continue
            lower = max(self.slice_start, idx - tolerance_samples)
            upper = min(idx + tolerance_samples, self.slice_end)
            for search_idx in range(lower, upper):
                if output_to_analyse[search_idx]:
                    hits += 1
                    break
            else:
                continue
        hitrate = hits / total_signals

        misfires = 0
        for idx, val in enumerate(output_to_analyse):
            if not val:
                continue
            lower = max(self.slice_start, idx - tolerance_samples)
            upper = min(idx + tolerance_samples, self.slice_end)
            for search_idx in range(lower, upper):
                if self.truth_data[search_idx]:
                    break
            else:
                misfires += 1
        misfire_rate = misfires / total_triggers

        performance = (hitrate + (1 - misfire_rate)) / 2

        if verbose:
            print("self.delay_samples:", self.delay_samples)
            print("self.inv_frac:", self.inv_frac)
            print("tolerance:", tolerance)
            print("tolerance_samples:", tolerance_samples)
            print("total_signals:", total_signals)
            print("total_triggers:", total_triggers)
            print("hits:", hits)
            print("misfires:", misfires)
            print("misfire_rate:", misfire_rate)  # Possible misleading statistic
            print("performance:", performance)  # Possible misleading statistic
            print()

        # Record test parameters and outputs
        test_parameters["delay_samples"] = self.delay_samples
        test_parameters["inv_frac"] = self.inv_frac
        test_parameters["tolerance"] = tolerance
        test_parameters["tolerance_samples"] = tolerance_samples
        test_parameters["total_signals"] = total_signals
        test_parameters["total_triggers"] = total_triggers
        test_parameters["hits"] = hits
        test_parameters["hitrate"] = hitrate
        test_parameters["misfires"] = misfires
        test_parameters["misfire_rate"] = misfire_rate
        test_parameters["performance"] = performance

        return test_parameters

    # @njit
    def get_performance(self, inv_frac_vals, delay_samples_vals, tolerance=100e-6, verbose=False):
        all_performances = []
        for delay_samples in delay_samples_vals:
            self.delay_samples = delay_samples
            if verbose: print("." * len(inv_frac_vals) + f" {delay_samples}")
            for inv_frac in inv_frac_vals:
                self.inv_frac = inv_frac
                # Only run CFD and ZD, where self.regenerate() would also fun the amplifier and filter
                self.run_cfd()
                self.run_zd()
                all_performances.append(self.get_inv_frac_performance(tolerance=tolerance))
                if verbose: print(".", end="")
            if verbose: print()
        if verbose: print("computation completed")
        return all_performances

    # @jit
    # def get_performance_jit(self, inv_frac_vals, delay_samples_vals, tolerance=100e-6, verbose=False):
    #     all_performances = []
    #     for delay_samples in delay_samples_vals:
    #         self.delay_samples = delay_samples
    #         if verbose: print("." * len(inv_frac_vals) + f" {delay_samples}")
    #         for inv_frac in inv_frac_vals:
    #             self.inv_frac = inv_frac
    #             # Only run CFD and ZD, where self.regenerate() would also fun the amplifier and filter
    #             self.run_cfd()
    #             self.run_zd()
    #             all_performances.append(self.get_inv_frac_performance(tolerance=tolerance))
    #             if verbose: print(".", end="")
    #         if verbose: print()
    #     if verbose: print("computation completed")
    #     return all_performances

    def foobuh(self, delay_samples, inv_frac, tolerance):
        cfd_done = self.cfd(self.sig_fil, delay_samples=delay_samples, inv_frac=inv_frac)
        sig_cfd = np.array(list(cfd_done))
        zd_done = self.zd(sig_cfd)
        output = np.array(list(zd_done))
        print(".")
        return self.get_inv_frac_performance(tolerance=tolerance, output_to_analyse=output)

    # def get_performance_parallel(self, inv_frac_vals, delay_samples_vals, tolerance=100e-6, verbose=False):
    #     collect_result = lambda results: self.all_computed_performances.append(results)
    #
    #     np = mp.cpu_count()
    #     with Pool(processes=np) as pool:
    #
    #         for delay_samples in delay_samples_vals:
    #             if verbose: print("." * len(inv_frac_vals) + f" {delay_samples}")
    #             for inv_frac in inv_frac_vals:
    #                 POOL.apply_async(self.foobuh,
    #                                  args=(self, delay_samples, inv_frac, tolerance),
    #                                  callback=collect_result,
    #                                  )
    #                 # if verbose: print(".", end="")
    #             # if verbose: print()
    #     # POOL.close()
    #     # if verbose: print("awaiting syncs")
    #     # POOL.join()
    #     if verbose: print("computation completed")
    #     return self.all_computed_performances

