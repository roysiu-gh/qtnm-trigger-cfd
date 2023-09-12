import matplotlib.pyplot as plt
import numpy as np
from ipywidgets import interact, Layout, IntSlider

from default_constants import DELAY_SAMPLES, FIGSIZE


def plot_inv_frac(df, delay_samples=DELAY_SAMPLES, title="untitled"):
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

    ax1_2 = ax1_1.twinx()  # instantiate a second axes that shares the same x-axis
    color = "tab:red"
    ax1_2.set_ylabel("Misfires", color=color)  # we already handled the x-label with ax1
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


def plot_all_3d(df, title="untitled"):
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


def plot_misfires(df, title="untitled"):
    """3D plot of misfires, useful for looking at noise."""
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


def plot_roc_curve(df, title="untitled"):
    fig, axis = plt.subplots()
    fig.suptitle(title)
    axis.set_xlim(0, 1)
    axis.set_ylim(0, 1.1)
    # axis.set_xlabel("Specificity (TNR)")
    axis.set_xlabel("Fall-out (FPR)")
    axis.set_ylabel("Sensitivity (TPR)")

    # delay_samples_vals = np.arange(0, 300, 25)
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


def plot_roc_curves_iir(df, title="untitled"):
    """Same as plot_roc_curve(), but includes a slider for different decay_part values"""
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

        plt.legend()

    interact(update, decay_part=decay_part_slider)

    return fig


def plot_roc_curves_sma(df, title="untitled"):
    """Same as plot_roc_curve(), but includes a slider for different decay_part values"""
    fig, axis = plt.subplots()
    fig.suptitle(title)
    axis.set_xlim(0, 1)
    axis.set_ylim(0, 1.1)

    delay_samples_vals = np.sort(df.delay_samples.unique())
    df.sort_values(by=["specificity"], inplace=True)  # So that the plot lines are sensible

    # Find decay_part values
    window_vals = np.sort(df.decay_part.unique())
    window_lower = window_vals[0]
    window_upper = window_vals[-1]
    window_step = window_vals[1] - window_vals[0]
    window_slider = IntSlider(min=window_lower, max=window_upper, step=window_step,
                              value=window_lower, description="Window samples",
                              layout=Layout(width="50%"), )

    def update(window):
        axis.cla()
        axis.set_title(f"Window samples: {window}")
        axis.set_xlabel("Fall-out (FPR)")
        axis.set_ylabel("Sensitivity (TPR)")
        df_window = df[df.window == window]
        for delay_samples in delay_samples_vals:
            filtered_df = df_window[df_window.delay_samples == delay_samples]
            sensitivities = filtered_df.sensitivity
            specificities = filtered_df.specificity
            fallouts = 1 - specificities
            axis.plot(fallouts, sensitivities, label=f"Delay Samples: {delay_samples}")

        plt.legend()

    interact(update, window_slider=window_slider)

    return fig
