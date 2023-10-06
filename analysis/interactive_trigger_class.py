import matplotlib.pyplot as plt
from IPython.display import display
from ipywidgets import interactive, Layout, IntSlider, FloatRangeSlider, FloatSlider, Label

from default_constants import *
from signal_data_class import SignalData


class InteractiveTrigger(SignalData):
    """A subclass of SignalData with methods to show an interactive graph of the signal (Matched Filter output) data
    and its processing in a JupyterLab notebook."""

    def __init__(self,
                 time: IntArray,
                 signal: IntArray,
                 title: str = "untitled",
                 yscale: str = "linear",
                 delay_samples: int = DELAY_SAMPLES,
                 inv_frac: int = INV_FRAC,
                 show_legend: bool = True,
                 *args,
                 **kwargs,
                 ):
        """Call the superclass' constructor and set some instance variables.

        :param time: See SignalData.
        :param signal: See SignalData.
        :param title: The title for the plot.
        :param yscale: The pyplotlib yscale for the plot.
        :param delay_samples: See cfd().
        :param inv_frac: See cfd().
        :param args: See SignalData.
        :param kwargs: See SignalData.
        """
        super().__init__(
            time=time,
            signal=signal,
            delay_samples=delay_samples,
            inv_frac=inv_frac,
            *args,
            **kwargs,
        )
        self.widget = None
        self.misfire_rate_text = None
        self.hitrate_text = None
        self.plt_fil3 = None
        self.plt_cfd2 = None
        self.plt_fil2 = None
        self.plt_cfd1 = None
        self.axis = None
        self.plt_fil1 = None
        self.fig = None
        self.plt_tru = None
        self.plt_zer = None
        self.title = title
        self.yscale = yscale

        view_range_min = self.all_t[self.slice_start]
        view_range_max = self.all_t[self.slice_end]  # NB [-1] indexing does not work with pandas dataframe
        self.view_range = [view_range_min, view_range_max]
        self.show_legend = show_legend

    def get_nonzeros(self, series):
        """Return datapoints where 'y'-val is non-zero."""
        times = []
        nonzerodata = []
        for index, item in enumerate(series):
            if item != 0:
                times.append(self.t[index])
                nonzerodata.append(item)
        return times, nonzerodata

    def update(self, decay_part: int, window_width: int, alpha: float,
               delay_samples: int, inv_frac: int,
               view_range: tuple[float: float]):
        """Update the interactive plot.

        :param decay_part: Used if using `lp_filter_iir()`.
        :param window_width: Used in various filters (usually Simple Moving Average variants).
        :param alpha: Used in Exponential Moving Average filter.
        :param delay_samples: See cfd().
        :param inv_frac: See cfd().
        :param view_range: The time-series range to display.
        :return: None
        """
        if view_range != self.view_range:
            self.view_range = view_range
            self.axis.set_xlim(self.view_range)
            return None  # To skip rest of computation

        if decay_part != self.filter_args["decay_part"]:
            self.filter_args["decay_part"] = decay_part
        if window_width != self.filter_args["window_width"]:
            self.filter_args["window_width"] = window_width
        if alpha != self.filter_args["alpha"]:
            self.filter_args["alpha"] = alpha
        if inv_frac != self.inv_frac:
            self.inv_frac = inv_frac
        if delay_samples != self.delay_samples:
            self.delay_samples = delay_samples

        self.regenerate()

        test_parameters = self.get_current_performance()
        self.hitrate_text.value = f"Hitrate: {test_parameters['hitrate']}"
        self.misfire_rate_text.value = f"Misfire rate: {test_parameters['misfire_rate']}"

        self.plt_fil1.set_ydata(self.sig_fil1)
        self.plt_cfd1.set_ydata(self.sig_cfd1)
        if self.run_second_filter:
            self.plt_fil2.set_ydata(self.sig_fil2)
        if self.run_discriminator_twice:
            self.plt_cfd2.set_ydata(self.sig_cfd2)
            self.plt_fil3.set_ydata(self.sig_fil3)
        self.plt_zer.remove()
        self.plt_zer = self.axis.scatter(*self.get_nonzeros(self.output),
                                         label="ZD output", marker="|", color="purple", s=1000, zorder=3)
        self.plt_tru.remove()
        self.plt_tru = self.axis.errorbar(*self.get_nonzeros(self.truth_data), xerr=self.tolerance,
                                          fmt="|", capsize=25, markeredgewidth=2,
                                          label="Truth data", color="yellow", zorder=4)

        if self.show_legend:
            plt.legend(loc="upper right")

    def show(self):
        """Create and show the interactive plot."""
        # Create outline.
        self.fig, self.axis = plt.subplots(figsize=FIGSIZE)
        self.fig.suptitle(self.title)

        # Plot
        self.axis.set_xlabel("Time [s]")
        self.axis.set_ylabel("Stored value in FPGA")
        self.axis.set_xlim(self.view_range)
        self.axis.set_yscale(self.yscale)
        self.axis.plot(self.t, self.sig_amp, label="Amplifier output")
        self.plt_fil1, = self.axis.plot(self.t, self.sig_fil1, label="LP filt 1")
        self.plt_cfd1, = self.axis.plot(self.t, self.sig_cfd1, label="CFD output 1")
        if self.run_second_filter:
            self.plt_fil2, = self.axis.plot(self.t, self.sig_fil2, label="LP filt 2")
        if self.run_discriminator_twice:
            self.plt_cfd2, = self.axis.plot(self.t, self.sig_cfd2, label="CFD output 2")
            self.plt_fil3, = self.axis.plot(self.t, self.sig_fil3, label="LP filt 3")
        self.plt_zer = self.axis.scatter(*self.get_nonzeros(self.output))
        self.plt_tru = self.axis.scatter(*self.get_nonzeros(self.truth_data))

        # Make labels to show hitrate and misfire_rate above plot
        self.hitrate_text = Label()
        self.misfire_rate_text = Label()

        # Create slider widgets
        decay_part_slider = IntSlider(min=880, max=1024, step=3,
                                      value=self.filter_args["decay_part"], description="Decay part / 1024",
                                      layout=Layout(width="50%"), )
        window_width_slider = IntSlider(min=5, max=300, step=5,
                                        value=self.filter_args["window_width"], description="Window Width",
                                        layout=Layout(width="75%"), )
        alpha_slider = FloatSlider(min=0, max=0.15, step=0.001,
                                   value=self.filter_args["alpha"], description="Alpha (for EMA)",
                                   layout=Layout(width="95%"), )

        delay_samples_slider = IntSlider(min=0, max=300, step=10,
                                         value=self.delay_samples, description="Delay samples",
                                         layout=Layout(width="50%"), )
        inv_frac_slider = FloatSlider(min=0, max=6, step=0.5,
                                      value=self.inv_frac, description="Inverse fraction",
                                      layout=Layout(width="50%"), )
        view_range_slider = FloatRangeSlider(min=self.view_range[0], max=self.view_range[1], step=10e-6,
                                             value=self.view_range, description="View range",
                                             layout=Layout(width="95%"), )

        self.widget = interactive(self.update,
                                  decay_part=decay_part_slider,
                                  window_width=window_width_slider,
                                  alpha=alpha_slider,
                                  delay_samples=delay_samples_slider,
                                  inv_frac=inv_frac_slider,
                                  view_range=view_range_slider,
                                  continuous_update=False,
                                  )

        # Initialise
        self.update(decay_part=self.filter_args["decay_part"],
                    window_width=self.filter_args["window_width"],
                    alpha=self.filter_args["alpha"],
                    delay_samples=self.delay_samples,
                    inv_frac=self.inv_frac,
                    view_range=self.view_range,
                    )
        display(self.hitrate_text, self.misfire_rate_text, self.widget)
