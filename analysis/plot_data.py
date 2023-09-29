"""Contains various functions for plotting computed data from analysing algorithms."""

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from ipywidgets import interact, Layout, IntSlider

from default_constants import DELAY_SAMPLES, FIGSIZE


def plot_inv_frac(df: pd.DataFrame, delay_samples: int = DELAY_SAMPLES, title: str = "untitled"):
    """Show twin plots with hitrate, misfires, and misfire rate for a given delay_samples with varying inv_frac.

    :param df: A Pandas dataframe with values for delay_samples, inv_frac, hitrate, and misfires.
    :param delay_samples: See cfd().
    :param title: The suptitle for the plots.
    :return: A pyplot figure.
    """
    df = df[df.delay_samples == delay_samples]

    fig, (ax1_1, ax2) = plt.subplots(1, 2)
    fig.suptitle(title)
    fig.set_figwidth(FIGSIZE[0])
    fig.set_figheight(FIGSIZE[1])

    # Initial plot

    ax1_1.set_title(f"delay_samples={delay_samples}")
    ax1_1.set_xlabel("inv_frac")
    color = "tab:green"
    ax1_1.set_ylabel("Hitrate", color=color)
    ax1_1.plot(df.inv_frac, df.hitrate, color=color)
    ax1_1.tick_params(axis='y', labelcolor=color)

    ax1_2 = ax1_1.twinx()  # Instantiate second axes with same x-axis
    color = "tab:red"
    ax1_2.set_ylabel("Misfires", color=color)  # Already handled x-label with ax1_1
    ax1_2.plot(df.inv_frac, df.misfires, color=color)
    ax1_2.tick_params(axis='y', labelcolor=color)

    # Get and plot hitrates and misfire rates

    ax2.set_title(f"delay_samples={delay_samples}")
    ax2.set_xlabel("inv_frac")
    ax2.set_ylim([0, 1.05])
    ax2.plot(df.inv_frac, df.hitrate, label="Hitrate", color="tab:green", linestyle="dotted")
    ax2.plot(df.inv_frac, df.misfire_rate, label="Misfire Rate", color="tab:red", linestyle="dotted")
    ax2.legend()

    fig.tight_layout()  # Otherwise the right y-label is slightly clipped (for axis1)
    plt.show()

    return fig


def plot_all_3d(df: pd.DataFrame, title: str = "untitled"):
    """Plot hitrates and misfire rates (z-axes) for varying delay_samples and inv_frac.

    :param df: A Pandas dataframe with values for delay_samples, inv_frac, hitrate, and misfires.
    :param title: The suptitle for the plots.
    :return: A pyplot figure.
    """
    fig, (ax1, ax2) = plt.subplots(1, 2,
                                   subplot_kw={"projection": "3d"},
                                   figsize=FIGSIZE)
    x = df.inv_frac
    y = df.delay_samples

    fig.suptitle(title)
    fig.tight_layout()

    ax1.set_title("Hitrate")
    cmap = plt.get_cmap("plasma")
    ax1.set_xlabel("inv_frac")
    ax1.set_ylabel("delay_samples")
    ax1.set_zlabel("hitrate")
    ax1.plot_trisurf(x, y, df.hitrate, cmap=cmap, linewidth=0.2)

    ax2.set_title("Misfire rate")
    cmap = plt.get_cmap("plasma_r")
    ax2.set_xlabel("inv_frac")
    ax2.set_ylabel("delay_samples")
    ax2.set_zlabel("misfire_rate")
    ax2.set_zlim([0, 1])
    ax2.plot_trisurf(x, y, df.misfire_rate, cmap=cmap, linewidth=0.2)
    plt.show()

    return fig


def plot_misfires(df: pd.DataFrame, title: str = "untitled"):
    """Plot (3D) misfires for varying delay_samples and inv_frac.

    :param df: A Pandas dataframe with values for delay_samples, inv_frac, and misfires.
    :param title: The suptitle for the plots.
    :return: A pyplot figure.
    """
    fig, axis = plt.subplots(1, 1,
                             subplot_kw={"projection": "3d"},
                             figsize=FIGSIZE)
    x = df.inv_frac
    y = df.delay_samples

    fig.suptitle(title)
    fig.tight_layout()

    axis.set_title("Misfires")
    cmap = plt.get_cmap("plasma")
    axis.set_xlabel("inv_frac")
    axis.set_ylabel("delay_samples")
    axis.set_zlabel("misfires")
    axis.plot_trisurf(x, y, df.misfires, cmap=cmap, linewidth=0.2)

    return fig


def plot_roc_curve(df: pd.DataFrame, title: str = "untitled"):
    """Plot a Receiver Operating Characteristic (ROC) curve. Plot a curve for different values of `delay_samples`.
    Vary `inv_frac` for each curve.

    :param df: A Pandas dataframe with values for delay_samples, inv_frac, sensitivity, and specificity.
    :param title: The title for the plot.
    :return: A pyplot figure.
    """
    fig, axis = plt.subplots()
    fig.suptitle(title)
    axis.set_xlim(0, 1)
    axis.set_ylim(0, 1.1)
    axis.set_xlabel("Fall-out (FPR)")
    axis.set_ylabel("Sensitivity (TPR)")

    delay_samples_vals = np.sort(df.delay_samples.unique())  # Iterate though the delay_samples with data in the df
    df.sort_values(by=["specificity"], inplace=True)  # So that the plot lines are sensible
    for delay_samples in delay_samples_vals:
        filtered_df = df[df.delay_samples == delay_samples]
        sensitivities = filtered_df.sensitivity
        specificities = filtered_df.specificity
        fallouts = 1 - specificities
        # axis.plot(ds_TNRs, ds_TPRs, label=f"delay_samples: {delay_samples}")
        axis.plot(fallouts, sensitivities, label=f"Delay Samples: {delay_samples}")

    plt.legend()
    plt.show()

    return fig


def plot_roc_curves_iir(df: pd.DataFrame, title: str = "untitled"):
    """Same as plot_roc_curve(), but includes a slider for different `decay_part` values.
    Use only for data collected from using `lp_filter_iir()`.

    :param df: A Pandas dataframe with values for delay_samples, inv_frac, sensitivity, and specificity.
    :param title: The title for the plot.
    :return: A pyplot figure.
    """
    fig, axis = plt.subplots()
    fig.suptitle(title)
    axis.set_xlim(0, 1)
    axis.set_ylim(0, 1.1)

    delay_samples_vals = np.sort(df.delay_samples.unique())
    df.sort_values(by=["specificity"], inplace=True)  # So that the plot lines are sensible

    # Find decay_part values
    decay_part_vals = np.sort(df.decay_part.unique())
    decay_part_lower = decay_part_vals[0]
    decay_part_upper = decay_part_vals[-1]
    decay_part_step = decay_part_vals[1] - decay_part_vals[0]
    decay_part_slider = IntSlider(min=decay_part_lower, max=decay_part_upper, step=decay_part_step,
                                  value=decay_part_lower, description="Decay part / 1024",
                                  layout=Layout(width="50%"), )

    def update(decay_part):
        axis.cla()
        axis.set_title(f"Decay: {decay_part}/1024")
        axis.set_xlabel("Fall-out (FPR)")
        axis.set_ylabel("Sensitivity (TPR)")
        df_decay_part = df[df.decay_part == decay_part]
        for delay_samples in delay_samples_vals:
            filtered_df = df_decay_part[df_decay_part.delay_samples == delay_samples]
            sensitivities = filtered_df.sensitivity
            specificities = filtered_df.specificity
            fallouts = 1 - specificities
            axis.plot(fallouts, sensitivities, label=f"Delay Samples: {delay_samples}")
        axis.legend()

    interact(update, decay_part=decay_part_slider)

    return fig


def plot_roc_curves_sma(df: pd.DataFrame, title: str = "untitled"):
    """Same as plot_roc_curve(), but includes a slider for different `window_width` values.
    Use only for data collected from using `sma_convolve()`.

    :param df: A Pandas dataframe with values for delay_samples, inv_frac, sensitivity, and specificity.
    :param title: The title for the plot.
    :return: A pyplot figure.
    """
    fig, axis = plt.subplots()
    fig.suptitle(title)
    axis.set_xlim(0, 1)
    axis.set_ylim(0, 1.1)

    delay_samples_vals = np.sort(df.delay_samples.unique())
    df.sort_values(by=["specificity"], inplace=True)  # So that the plot lines are sensible

    # Find decay_part values
    window_width_vals = np.sort(df.window_width.unique())
    window_width_lower = window_width_vals[0]
    window_width_upper = window_width_vals[-1]
    window_width_step = window_width_vals[1] - window_width_vals[0]
    window_width_slider = IntSlider(min=window_width_lower, max=window_width_upper, step=window_width_step,
                                    value=window_width_lower, description="Window width (samples)",
                                    layout=Layout(width="50%"), )

    def update(window_width):
        axis.cla()
        axis.set_title(f"Window width (samples): {window_width}")
        axis.set_xlabel("Fall-out (FPR)")
        axis.set_ylabel("Sensitivity (TPR)")
        df_window_width = df[df.window_width == window_width]
        for delay_samples in delay_samples_vals:
            filtered_df = df_window_width[df_window_width.delay_samples == delay_samples]
            sensitivities = filtered_df.sensitivity
            specificities = filtered_df.specificity
            fallouts = 1 - specificities
            axis.plot(fallouts, sensitivities, label=f"Delay Samples: {delay_samples}")
        axis.legend()

    interact(update, window_width=window_width_slider)

    return fig
