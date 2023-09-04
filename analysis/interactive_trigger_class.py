import matplotlib.pyplot as plt

from algorithms import cfd_normalised
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
            cfd_alg=cfd_normalised,  # Use 'normalised' version for clearer plots
            *args,
            **kwargs,
        )
        self.title = title
        self.yscale = yscale

        view_range_min = self.all_t[self.slice_start]
        view_range_max = self.all_t[self.slice_end]  # NB [-1] indexing does not work with pandas dataframe
        self.view_range = [view_range_min, view_range_max]

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
        if view_range is not None:
            self.view_range = view_range
            self.axis.set_xlim(self.view_range)

        if (inv_frac is not None) or (delay_samples is not None):
            self.inv_frac = inv_frac
            self.delay_samples = delay_samples

            self.run_cfd1()
            self.run_fil2()
            self.run_cfd2()
            self.run_zd()

            test_parameters = self.get_current_performance()
            self.hitrate_text.value = f"Hitrate: { test_parameters['hitrate'] }"
            self.misfire_rate_text.value = f"Misfire rate: { test_parameters['misfire_rate'] }"

            self.plt_cfd1.set_ydata(self.sig_cfd1)
            self.plt_fil2.set_ydata(self.sig_fil2)
            self.plt_cfd2.set_ydata(self.sig_cfd2)
            self.plt_zer.remove()
            self.plt_zer = self.axis.scatter(*self.get_nonzeros(self.output),
                                             label="ZD output", marker="x", color="purple", s=1000, zorder=3)
            self.plt_tru.remove()
            self.plt_tru = self.axis.errorbar(*self.get_nonzeros(self.truth_data), xerr=self.tolerance,
                                              fmt="|", capsize=25, markeredgewidth=2,
                                              label="Truth data", color="yellow", zorder=4)

        plt.legend(loc="upper right")

    def show(self):
        self.fig, self.axis = plt.subplots(figsize=FIGSIZE)
        self.fig.suptitle(self.title)

        self.axis.set_xlim(self.view_range)
        self.axis.set_yscale(self.yscale)
        self.axis.plot(self.t, self.sig_amp, label="Amplifier output")
        self.axis.plot(self.t, self.sig_fil1, label="Filter output")
        self.plt_cfd1, = self.axis.plot(self.t, self.sig_cfd1, label="CFD output 1")
        self.plt_fil2, = self.axis.plot(self.t, self.sig_cfd2, label="LP filt 2")
        self.plt_cfd2, = self.axis.plot(self.t, self.sig_cfd2, label="CFD output 2")
        self.plt_zer = self.axis.scatter(*self.get_nonzeros(self.output))
        self.plt_tru = self.axis.scatter(*self.get_nonzeros(self.truth_data))

        self.hitrate_text = Label()
        self.misfire_rate_text = Label()

        delay_samples_slider = IntSlider(min=0, max=300, step=10,
                                         value=self.delay_samples, description="Delay samples",
                                         layout=Layout(width="50%"), )
        inv_frac_slider = FloatSlider(min=0, max=6, step=0.5,
                                      value=self.inv_frac, description="Inverse fraction",
                                      layout=Layout(width="50%"), )
        view_range_slider = FloatRangeSlider(min=self.view_range[0], max=self.view_range[1], step=10e-6,
                                             value=self.view_range, description="View range",
                                             layout=Layout(width="95%"),
                                             )

        self.widget = interactive(self.update,
                                  delay_samples=delay_samples_slider,
                                  inv_frac=inv_frac_slider,
                                  view_range=view_range_slider,
                                  continuous_update=False,
                                  )

        # Show triggers and truth data with graphics settings as in update(). Works by... logic.
        self.update(delay_samples=None, inv_frac=None, view_range=None)
        display(self.hitrate_text, self.misfire_rate_text, self.widget)
