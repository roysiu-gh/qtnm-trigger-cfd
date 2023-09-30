"""Default values for some commonly used variables. Includes some type aliases for Numpy."""

from nptyping import NDArray, Shape, Bool, Int, Float

# Type aliases
BoolArray = NDArray[Shape["1"], Bool]  # Type hint alias: 1D array of bools
IntArray = NDArray[Shape["1"], Int]  # Type hint alias: 1D array of ints
FloatArray = NDArray[Shape["1"], Float]  # Type hint alias: 1D array of floats

# Filter params
DECAY_PART = 900
WINDOW_WIDTH = 100
ALPHA = 0.05

# CFD params
DELAY_SAMPLES = 100  # See cfd()
INV_FRAC = 3  # See cfd()

# ROC curve generation
TOLERANCE = 100e-6  # The tolerance for a successful test in seconds
SECTION_TIME = 2e-3  # The size to split data up into for testing, e.g. calculating ROC plots

# Misc
SNR = 3  # Signal-to-noise ratio
SLICE_START = 0
SLICE_END = 10000
FIGSIZE = (13, 5)  # For pyplot
