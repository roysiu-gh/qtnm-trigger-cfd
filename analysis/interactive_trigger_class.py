import matplotlib.pyplot as plt

from default_constants import *
from signal_data_class import SignalData


class InteractiveTrigger(SignalData):
    def __init__(self,
                 data,
                 slice_start=SLICE_START,
                 slice_end=SLICE_END,
                 delay_samples=DELAY_SAMPLES,
                 inv_frac=INV_FRAC,
                 *args,
                 **kwargs,
                 ):
        super().__init__(
            data=data,
            slice_start=slice_start,
            slice_end=slice_end,
            delay_samples=delay_samples,
            inv_frac=inv_frac,
            *args,
            **kwargs,
        )
        self.fig, self.axis = plt.subplots(figsize=(10, 6))

        self.axis.plot(self.t, self.sig_amp, label="Amplifier output")
        self.axis.plot(self.t, self.sig_fil, label="Filter output")
        self.plt_cfd, = self.axis.plot(self.t, self.sig_cfd, label="CFD output")
        self.plt_zer = self.axis.scatter(*self.get_zero_data(), label="ZD output", marker="x", color="purple", s=1000,
                                         zorder=3)

    def update(self, delay_samples=None, inv_frac=None):
        # if delay_samples is not None: self.delay_samples = delay_samples
        # if inv_frac is not None: self.inv_frac = inv_frac
        # Only update if not none:
        self.delay_samples = delay_samples or self.delay_samples
        self.inv_frac = inv_frac or self.inv_frac

        self.run_cfd()
        self.run_zd()

        self.plt_cfd.set_ydata(self.sig_cfd)
        self.plt_zer.remove()
        self.plt_zer = self.axis.scatter(*self.get_zero_data(), label="ZD output", marker="x", color="purple", s=1000,
                                         zorder=3)
        plt.legend(loc="upper right")
        plt.show()
