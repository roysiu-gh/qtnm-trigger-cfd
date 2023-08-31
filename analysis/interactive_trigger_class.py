import matplotlib.pyplot as plt

from default_constants import *
from signal_data_class import SignalData

from IPython.display import display
from ipywidgets import interactive, Layout, IntSlider, FloatRangeSlider, FloatSlider, Label


class InteractiveTrigger(SignalData):
    def __init__(self,
                 time,
                 signal,
                 title="untitled",
                 yscale="linear",
                 delay_samples=DELAY_SAMPLES,
                 inv_frac=INV_FRAC,
                 *args,
                 **kwargs,
                 ):
        super().__init__(
            time=time,
            signal=signal,
            delay_samples=delay_samples,
            inv_frac=inv_frac,
            *args,
            **kwargs,
        )
        view_range_max = list(self.all_t)[-1]  # NB [-1] indexing does not work with pandas dataframe
        self.view_range = [0, view_range_max]

        self.fig, self.axis = plt.subplots(figsize=FIGSIZE)
        self.fig.suptitle(title)

        self.axis.set_xlim(self.view_range)
        self.axis.set_yscale(yscale)
        self.axis.plot(self.t, self.sig_amp, label="Amplifier output")
        self.axis.plot(self.t, self.sig_fil, label="Filter output")
        self.plt_cfd, = self.axis.plot(self.t, self.sig_cfd, label="CFD output")
        self.plt_zer = self.axis.scatter(*self.get_nonzeros(self.output))
        self.plt_tru = self.axis.scatter(*self.get_nonzeros(self.truth_data))

        self.hitrate_text = Label()
        self.misfire_rate_text = Label()

        # Show triggers and truth data with graphics settings as in update(). Works by... logic.
        self.update(delay_samples=self.delay_samples, inv_frac=self.inv_frac, view_range=[0, view_range_max])
        # self.update(delay_samples=self.delay_samples, inv_frac=self.inv_frac, view_range=self.view_range)

        delay_samples_slider = IntSlider(min=0, max=300, step=10,
                                         value=self.delay_samples, description="Delay samples",
                                         layout=Layout(width="50%"), )
        inv_frac_slider = FloatSlider(min=0, max=6, step=0.1,
                                      value=self.inv_frac, description="Inverse fraction",
                                      layout=Layout(width="50%"), )
        view_range_slider = FloatRangeSlider(min=0, max=view_range_max, step=10e-6,
                                             value=[0, view_range_max], description="View range",
                                             layout=Layout(width="95%"),
                                             )

        self.widget = interactive(self.update,
                                  delay_samples=delay_samples_slider,
                                  inv_frac=inv_frac_slider,
                                  view_range=view_range_slider,
                                  )

    def get_nonzeros(self, series):
        """Returns datapoints where 'y'-val is non-zero."""
        times = []
        nonzerodata = []
        for index, item in enumerate(series):
            if item != 0:
                times.append(self.t[index])
                nonzerodata.append(item)
        return times, nonzerodata

    def update(self, delay_samples=None, inv_frac=None, view_range=None):
        if self.view_range != view_range:
            self.view_range = view_range or self.view_range
            self.axis.set_xlim(view_range)

        if (self.inv_frac != inv_frac) or (self.delay_samples != delay_samples):
            # Only update if not none:
            self.inv_frac = inv_frac or self.inv_frac
            self.delay_samples = delay_samples or self.delay_samples

            self.run_cfd()
            self.run_zd()

            test_parameters = self.get_current_performance()
            hitrate = test_parameters["hitrate"]
            misfire_rate = test_parameters["misfire_rate"]
            self.hitrate_text.value = f"Hitrate: {hitrate:.3f}"
            self.misfire_rate_text.value = f"Misfire rate: {misfire_rate:.3f}"

            self.plt_cfd.set_ydata(self.sig_cfd)
            self.plt_zer.remove()
            self.plt_zer = self.axis.scatter(*self.get_nonzeros(self.output),
                                             label="ZD output", marker="x", color="purple", s=1000, zorder=3)
            self.plt_tru.remove()
            self.plt_tru = self.axis.errorbar(*self.get_nonzeros(self.truth_data), xerr=self.tolerance,
                                              fmt="|", capsize=25, markeredgewidth=2,
                                              label="Truth data", color="yellow", zorder=4)

        plt.legend(loc="upper right")

    def show(self):
        display(self.hitrate_text, self.misfire_rate_text, self.widget)
