<a id="analysis"></a>

# analysis

<a id="analysis.algorithms"></a>

# analysis.algorithms

Most functions that could be written in Verilog are written here as generators to closer replicate Verilog
description. Numba compilation is used to speed up some functions. `XXX_wrapper` functions return the corresponding
function with all parameters preset, so that only the input series `x_all` is required. `XXX_extracted` functions
exist because Numba doesn't support the **kwargs construct. They ignore arguments irrelevant (hard-coded) to the
wrapped functions, and return the output of the wrapped function. The type hint `NDArray[Shape["1"],
np.dtype[np.integer]]` means a 1D Numpy array of Numpy integers.

<a id="analysis.algorithms.__requires__"></a>

#### \_\_requires\_\_

For numba

<a id="analysis.algorithms.human_time"></a>

#### human\_time

```python
def human_time(seconds: float) -> str
```

Convert seconds to a human-readable time duration.

<a id="analysis.algorithms.no_filter"></a>

#### no\_filter

```python
def no_filter(x_all: IntArray, *args, **kwargs) -> Iterator[int]
```

The identity filter.

**Arguments**:

- `x_all`: The input signal.
- `args`: Ignored.
- `kwargs`: Ignored.

**Returns**:

The input unchanged.

<a id="analysis.algorithms.lp_filter_iir"></a>

#### lp\_filter\_iir

```python
@jit(nopython=True)
def lp_filter_iir(x_all: IntArray,
                  decay_full_power: int = 10,
                  decay_part: int = 900) -> Iterator[int]
```

Low-pass single-pole IIR filter simulation of Verilog implementation. Written as a generator to simulate

verilog functionality. This follows the usual algorithm, to avoid use of floating points, the normal parameter
`decay` is split into a numerator and denominator so `decay = decay_part / decay_full'. Instead of multiplying by `decay`, the signal is multiplied by
the numerator then divided by the denominator. The denominator must be a power of 2 so that we can use an
arithmetic shift for fast division without use of floating points.
Default `decay_full_power = 10` so that `decay_full = 2 ** decay_full_power = 1024`.
Cannot parallelise.

**Arguments**:

- `x_all`: The input signal.
- `decay_full_power`: The power (of 2) of the denominator of `decay`.
- `decay_part`: The numerator of `decay`.

**Returns**:

Filtered result.

<a id="analysis.algorithms.lp_filter_iir_extracted"></a>

#### lp\_filter\_iir\_extracted

```python
def lp_filter_iir_extracted(x_all: IntArray, **kwargs) -> Iterator[int]
```

An 'extracted' wrapper for lp_filter_iir().

<a id="analysis.algorithms.lp_filter_iir_wrapper"></a>

#### lp\_filter\_iir\_wrapper

```python
def lp_filter_iir_wrapper(decay_full_power: int = 10,
                          decay_part: int = 900) -> Callable
```

Return an instance of lp_filter_iir() with decay_full_power and decay_part preset.

<a id="analysis.algorithms.sma_convolve"></a>

#### sma\_convolve

```python
def sma_convolve(x_all: IntArray, window_width: int = 100) -> FloatArray
```

Simple moving average filter using convolution, NOT Verilog implementation.

**Arguments**:

- `x_all`: The input signal.
- `window_width`: The window size in samples.

**Returns**:

Filtered result.

<a id="analysis.algorithms.sma_convolve_extracted"></a>

#### sma\_convolve\_extracted

```python
def sma_convolve_extracted(x_all: IntArray, **kwargs) -> Iterator[int]
```

An 'extracted' wrapper for sma_convolve().

<a id="analysis.algorithms.wma_linear_convolve"></a>

#### wma\_linear\_convolve

```python
def wma_linear_convolve(x_all: IntArray,
                        window_width: int = 100) -> FloatArray
```

(Linearly) weighted moving average filter.

**Arguments**:

- `x_all`: The input signal.
- `window_width`: The window size in samples.

**Returns**:

Filtered result.

<a id="analysis.algorithms.wma_linear_convolve_extracted"></a>

#### wma\_linear\_convolve\_extracted

```python
def wma_linear_convolve_extracted(x_all: IntArray, **kwargs) -> Iterator[int]
```

An 'extracted' wrapper for wma_linear_convolve().

<a id="analysis.algorithms.ema_convolve"></a>

#### ema\_convolve

```python
def ema_convolve(x_all: IntArray,
                 window_width: int = 500,
                 alpha: float = 0.05) -> IntArray
```

Exponentially weighted moving average filter. Formula is e ** (alpha * x).

**Arguments**:

- `x_all`: The input signal.
- `window_width`: The window size in samples.
- `alpha`: As in formula.

**Returns**:

Filtered result.

<a id="analysis.algorithms.ema_convolve_extracted"></a>

#### ema\_convolve\_extracted

```python
def ema_convolve_extracted(x_all: IntArray, **kwargs) -> Iterator[int]
```

An 'extracted' wrapper for ema_convolve().

<a id="analysis.algorithms.ema_wrapper"></a>

#### ema\_wrapper

```python
def ema_wrapper(window_width: int = 500, alpha: float = 0.05) -> Callable
```

Return an instance of ema_convolve() with n and alpha preset.

<a id="analysis.algorithms.cfd"></a>

#### cfd

```python
@jit(nopython=True)
def cfd(x_all: IntArray,
        inv_frac: int = 3,
        delay_samples: int = 100) -> Iterator[int]
```

Simulation of the constant fraction discriminator (CFD) described in Verilog.
As normally described, the parameters are `fraction` and `delay`.
The parameter `inv_frac` is `1/fraction`, so can multiply the conjugate variable
    rather than divide (which is easier to synthesise).
Note the parameter `delay_samples = delay * sample_rate`.

<a id="analysis.algorithms.cfd_normalised"></a>

#### cfd\_normalised

```python
@jit(nopython=True)
def cfd_normalised(x_all: IntArray,
                   inv_frac: int = 3,
                   delay_samples: int = 100) -> Iterator[int]
```

Make cfd() output smaller ('normalised') to fit on graph for InteractiveTrigger.

<a id="analysis.algorithms.cfd2"></a>

#### cfd2

```python
@jit(nopython=True)
def cfd2(x_all: IntArray,
         inv_frac: int = 3,
         delay_samples: int = 100) -> Iterator[int]
```

Alternate version (2) of cfd(), are essentially equivalent.

<a id="analysis.algorithms.cfd3"></a>

#### cfd3

```python
@jit(nopython=True)
def cfd3(x_all: IntArray,
         inv_frac: int = 3,
         delay_samples: int = 100) -> Iterator[int]
```

Alternate version (3) of cfd(), are essentially equivalent.

<a id="analysis.algorithms.diff"></a>

#### diff

```python
def diff(x_all: IntArray) -> IntArray
```

A discriminator using the difference between neighbouring values. Essentially useless.

<a id="analysis.algorithms.mad_discriminator"></a>

#### mad\_discriminator

```python
def mad_discriminator(x_all: IntArray,
                      window_width: int = WINDOW_WIDTH,
                      madt: float = 2.0,
                      *args,
                      **kwargs) -> Iterator[int]
```

A discriminator which triggers when the signal exceeds a preset Mean Average Deviation from the (simple

moving) mean. Can probably program in Verilog.

**Arguments**:

- `x_all`: The input signal.
- `window_width`: The window size in samples.
- `madt`: The Mean Absolute Deviation threshold.
- `args`: Ignored.
- `kwargs`: Ignored.

**Returns**:

<>?

<a id="analysis.algorithms.zero_detector"></a>

#### zero\_detector

```python
@jit(nopython=True, parallel=True)
def zero_detector(x_all: IntArray) -> Iterator[int]
```

Finds positions where the signal is either rising or falling through zero using XOR on the most significant bit.

Note we use two's complement, so MSB is 0 for non-negatives (including 0), and 1 for negatives.

**Arguments**:

- `x_all`: The input signal.

**Returns**:

The zero positions.

<a id="analysis.algorithms.zero_detector2"></a>

#### zero\_detector2

```python
@jit(nopython=True)
def zero_detector2(x_all: IntArray) -> Iterator[int]
```

A variation of `zero_detector()` that only detects rising zero crossings.

Note we use two's complement, so MSB is 0 for non-negatives (including 0), and 1 for negatives.

**Arguments**:

- `x_all`: The input signal.

**Returns**:

The zero positions.

<a id="analysis.algorithms.compare_data_to_success_condition"></a>

#### compare\_data\_to\_success\_condition

```python
@jit(nopython=True)
def compare_data_to_success_condition(
        iterate_through: IntArray, search_for: BoolArray,
        tolerance_samples: int) -> tuple[int, int]
```

Loop through `iterate_through` to count values against the success condition `search_for`
within `tolerance_samples`. Note for counting misfires this returns the complement.
If `tolerance_samples` passed as `None`, search whole slice (maximum tolerance).

<a id="analysis.default_constants"></a>

# analysis.default\_constants

Default values for some commonly used variables. Includes some type aliases for Numpy.

<a id="analysis.default_constants.BoolArray"></a>

#### BoolArray

Type hint alias: 1D array of bools

<a id="analysis.default_constants.IntArray"></a>

#### IntArray

Type hint alias: 1D array of ints

<a id="analysis.default_constants.FloatArray"></a>

#### FloatArray

Type hint alias: 1D array of floats

<a id="analysis.default_constants.DELAY_SAMPLES"></a>

#### DELAY\_SAMPLES

See cfd()

<a id="analysis.default_constants.INV_FRAC"></a>

#### INV\_FRAC

See cfd()

<a id="analysis.default_constants.TOLERANCE"></a>

#### TOLERANCE

The tolerance for a successful test in seconds

<a id="analysis.default_constants.SECTION_TIME"></a>

#### SECTION\_TIME

The size to split data up into for testing, e.g. calculating ROC plots

<a id="analysis.default_constants.SNR"></a>

#### SNR

Signal-to-noise ratio

<a id="analysis.default_constants.FIGSIZE"></a>

#### FIGSIZE

For pyplot

<a id="analysis.interactive_trigger_class"></a>

# analysis.interactive\_trigger\_class

<a id="analysis.interactive_trigger_class.InteractiveTrigger"></a>

## InteractiveTrigger Objects

```python
class InteractiveTrigger(SignalData)
```

A subclass of SignalData with methods to show an interactive graph of the signal (Matched Filter output) data
and its processing in a JupyterLab notebook.

<a id="analysis.interactive_trigger_class.InteractiveTrigger.__init__"></a>

#### \_\_init\_\_

```python
def __init__(time: IntArray,
             signal: IntArray,
             title: str = "untitled",
             yscale: str = "linear",
             delay_samples: int = DELAY_SAMPLES,
             inv_frac: int = INV_FRAC,
             show_legend: bool = True,
             *args,
             **kwargs)
```

Call the superclass' constructor and set some instance variables.

**Arguments**:

- `time`: See SignalData.
- `signal`: See SignalData.
- `title`: The title for the plot.
- `yscale`: The pyplotlib yscale for the plot.
- `delay_samples`: See cfd().
- `inv_frac`: See cfd().
- `args`: See SignalData.
- `kwargs`: See SignalData.

<a id="analysis.interactive_trigger_class.InteractiveTrigger.get_nonzeros"></a>

#### get\_nonzeros

```python
def get_nonzeros(series)
```

Return datapoints where 'y'-val is non-zero.

<a id="analysis.interactive_trigger_class.InteractiveTrigger.update"></a>

#### update

```python
def update(decay_part: int, window_width: int, alpha: float,
           delay_samples: int, inv_frac: int, view_range: tuple[float:float])
```

Update the interactive plot.

**Arguments**:

- `decay_part`: Used if using `lp_filter_iir()`.
- `window_width`: Used in various filters (usually Simple Moving Average variants).
- `alpha`: Used in Exponential Moving Average filter.
- `delay_samples`: See cfd().
- `inv_frac`: See cfd().
- `view_range`: The time-series range to display.

**Returns**:

None

<a id="analysis.interactive_trigger_class.InteractiveTrigger.show"></a>

#### show

```python
def show()
```

Create and show the interactive plot.

<a id="analysis.plot_data"></a>

# analysis.plot\_data

Contains various functions for plotting computed data from analysing algorithms.

<a id="analysis.plot_data.plot_inv_frac"></a>

#### plot\_inv\_frac

```python
def plot_inv_frac(df: pd.DataFrame,
                  delay_samples: int = DELAY_SAMPLES,
                  title: str = "untitled")
```

Show twin plots with hitrate, misfires, and misfire rate for a given delay_samples with varying inv_frac.

**Arguments**:

- `df`: A Pandas dataframe with values for delay_samples, inv_frac, hitrate, and misfires.
- `delay_samples`: See cfd().
- `title`: The suptitle for the plots.

**Returns**:

A pyplot figure.

<a id="analysis.plot_data.plot_all_3d"></a>

#### plot\_all\_3d

```python
def plot_all_3d(df: pd.DataFrame, title: str = "untitled")
```

Plot hitrates and misfire rates (z-axes) for varying delay_samples and inv_frac.

**Arguments**:

- `df`: A Pandas dataframe with values for delay_samples, inv_frac, hitrate, and misfires.
- `title`: The suptitle for the plots.

**Returns**:

A pyplot figure.

<a id="analysis.plot_data.plot_misfires"></a>

#### plot\_misfires

```python
def plot_misfires(df: pd.DataFrame, title: str = "untitled")
```

Plot (3D) misfires for varying delay_samples and inv_frac.

**Arguments**:

- `df`: A Pandas dataframe with values for delay_samples, inv_frac, and misfires.
- `title`: The suptitle for the plots.

**Returns**:

A pyplot figure.

<a id="analysis.plot_data.plot_roc_curve"></a>

#### plot\_roc\_curve

```python
def plot_roc_curve(df: pd.DataFrame,
                   title: str = "untitled",
                   show_legend: bool = True)
```

Plot a Receiver Operating Characteristic (ROC) curve. Plot a curve for different values of `delay_samples`.

Vary `inv_frac` for each curve.

**Arguments**:

- `df`: A Pandas dataframe with values for delay_samples, inv_frac, sensitivity, and specificity.
- `title`: The title for the plot.

**Returns**:

A pyplot figure.

<a id="analysis.plot_data.plot_roc_curves_iir"></a>

#### plot\_roc\_curves\_iir

```python
def plot_roc_curves_iir(df: pd.DataFrame,
                        title: str = "untitled",
                        show_legend: bool = True)
```

Same as plot_roc_curve(), but includes a slider for different `decay_part` values.

Use only for data collected from using `lp_filter_iir()`.

**Arguments**:

- `df`: A Pandas dataframe with values for delay_samples, inv_frac, sensitivity, and specificity.
- `title`: The title for the plot.

**Returns**:

A pyplot figure.

<a id="analysis.plot_data.plot_roc_curves_sma"></a>

#### plot\_roc\_curves\_sma

```python
def plot_roc_curves_sma(df: pd.DataFrame,
                        title: str = "untitled",
                        show_legend: bool = True)
```

Same as plot_roc_curve(), but includes a slider for different `window_width` values.

Use only for data collected from using `sma_convolve()`.

**Arguments**:

- `df`: A Pandas dataframe with values for delay_samples, inv_frac, sensitivity, and specificity.
- `title`: The title for the plot.

**Returns**:

A pyplot figure.

<a id="analysis.signal_data_class"></a>

# analysis.signal\_data\_class

<a id="analysis.signal_data_class.SignalData"></a>

## SignalData Objects

```python
class SignalData(object)
```

A class containing a given output signal (and time series) from the Matched Filter, the truth data to compare the
trigger against, and the methods to do so.

<a id="analysis.signal_data_class.SignalData.__init__"></a>

#### \_\_init\_\_

```python
def __init__(time: IntArray,
             signal: IntArray,
             truth_data: BoolArray | None = None,
             filter: Callable = lp_filter_iir_extracted,
             discriminator: Callable = cfd,
             zero_detector_alg: Callable = zero_detector2,
             run_second_filter: bool = False,
             run_discriminator_twice: bool = False,
             slice_start: int = 0,
             slice_end: int | None = None,
             amp_power: int = 16,
             filter_args: dict = {
                 "decay_part": DECAY_PART,
                 "window_width": WINDOW_WIDTH,
                 "alpha": ALPHA,
             },
             delay_samples: int = DELAY_SAMPLES,
             inv_frac: int = INV_FRAC,
             tolerance: float = TOLERANCE,
             section_time: float = SECTION_TIME)
```

**Arguments**:

- `time`: The time series.
- `signal`: The signal series output from the Matched Filter.
- `truth_data`: The truth data to test the trigger against.
- `filter`: The filter to use.
- `discriminator`: The discriminator (default CFD) to use.
- `zero_detector_alg`: The zero detector to use.
- `run_second_filter`: Whether to run filter the output of the (first) discriminator.
- `run_discriminator_twice`: Whether to run the discriminator again on the (filtered) output of the first
discriminator.
- `slice_start`: Use if only analysing a specific part of the data.
- `slice_end`: Use if only analysing a specific part of the data.
- `amp_power`: The power of 2 by which the signal should be amplified before processing.
- `filter_args`: General argument dict for whatever filter alg is passed.
- `delay_samples`: See cfd().
- `inv_frac`: See cfd().
- `tolerance`: The (time) tolerance for counting a successful trigger within a section.
- `section_time`: The size of a section (given data is split into sections to analyse separately).

<a id="analysis.signal_data_class.SignalData.slice"></a>

#### slice

```python
def slice()
```

Slice the relevant data to analyse only a part of it.
Note that this may affect computation as the preceding calculations aren't taken into account depending on the
algorithms used.

<a id="analysis.signal_data_class.SignalData.run_amp"></a>

#### run\_amp

```python
def run_amp()
```

Amplify the signal so that computation can be integer-only (faster than float arithmetic).

<a id="analysis.signal_data_class.SignalData.run_fil1"></a>

#### run\_fil1

```python
def run_fil1()
```

Filter the amplified signal.

<a id="analysis.signal_data_class.SignalData.run_cfd1"></a>

#### run\_cfd1

```python
def run_cfd1()
```

Run the discriminator on the (amplified and filtered) signal.

<a id="analysis.signal_data_class.SignalData.run_fil2"></a>

#### run\_fil2

```python
def run_fil2()
```

Filter the output of the discriminator.

<a id="analysis.signal_data_class.SignalData.run_cfd2"></a>

#### run\_cfd2

```python
def run_cfd2()
```

Run the discriminator a second time.

<a id="analysis.signal_data_class.SignalData.run_fil3"></a>

#### run\_fil3

```python
def run_fil3()
```

Filter the output of the second discriminator.

<a id="analysis.signal_data_class.SignalData.run_zd"></a>

#### run\_zd

```python
def run_zd()
```

Find zero-crossings on whatever the is final output (determined by) `run_discriminator_twice` and
`run_second_filter`.

<a id="analysis.signal_data_class.SignalData.get_current_performance"></a>

#### get\_current\_performance

```python
def get_current_performance(tolerance: float = None,
                            output_to_analyse=None,
                            verbose: bool = False) -> dict
```

Calculate various stats on the output against the truth data.

If `output_to_analyse` is None, use `self.output`. This is so that `get_performance_parallel()` can
run without changing instance variables and affecting other processes.

Todo: make this a class method?

**Arguments**:

- `tolerance`: The (time) tolerance for counting a successful trigger.
- `output_to_analyse`: Analyse an output that isn't the current output.
- `verbose`: Print the calculated data.

<a id="analysis.signal_data_class.SignalData.get_performance"></a>

#### get\_performance

```python
def get_performance(inv_frac_vals,
                    delay_samples_vals,
                    tolerance=None,
                    verbose=False)
```

Run `get_current_performance()` on various values for `inv_frac` and `delay_samples`.

**Arguments**:

- `inv_frac_vals`: List of values of `inv_frac` to test.
- `delay_samples_vals`: List of values of `delay_samples` to test.
- `tolerance`: The (time) tolerance for counting a successful trigger.
- `verbose`: Print a loading bar, wall time and CPU time.

<a id="analysis.signal_data_class.SignalData.get_roc_curve_data"></a>

#### get\_roc\_curve\_data

```python
def get_roc_curve_data(inv_frac_vals,
                       delay_samples_vals,
                       tolerance=None,
                       verbose=False)
```

Get sensitivities and specificities for various values of `inv_frac` and `delay_samples`.

**Arguments**:

- `inv_frac_vals`: List of values of `inv_frac` to test.
- `delay_samples_vals`: List of values of `delay_samples` to test.
- `tolerance`: The (time) tolerance for counting a successful trigger.
- `verbose`: Print a loading bar, wall time and CPU time.

<a id="analysis.signal_data_class.SignalData.get_roc_curve_data2"></a>

#### get\_roc\_curve\_data2

```python
def get_roc_curve_data2(filter_arg_range: tuple[float, float, float],
                        inv_frac_range: tuple[float, float, float],
                        delay_samples_range: tuple[float, float, float],
                        filter=lp_filter_iir_extracted,
                        filter_arg_name: str = "decay_part",
                        tolerance: float = None,
                        verbose: bool = False)
```

Generate ROC curve data for varied values for: the first filter arg, inv_frac, `delay_samples`.

For the values, takes tuple (min, max, step) unpacked into `np.arange()`.

**Arguments**:

- `filter_arg_range`: The range of the (first) filter arg as a tuple (min, max, step).
- `inv_frac_range`: The range of `inv_frac` as a tuple (min, max, step).
- `delay_samples_range`: The range of `delay_samples` as a tuple (min, max, step).
- `filter`: The filter to use.
- `filter_arg_name`: The argument name of the filter passed (not the optimal way to program this I know).
- `tolerance`: The (time) tolerance for counting a successful trigger.
- `verbose`: Print a loading bar, wall time and CPU time.

