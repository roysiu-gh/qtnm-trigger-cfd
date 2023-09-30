from nptyping import NDArray, Shape, Bool, Int, Float

# Type aliases
BoolArray = NDArray[Shape["1"], Bool]
IntArray = NDArray[Shape["1"], Int]
FloatArray = NDArray[Shape["1"], Float]

# Filter params
DECAY_PART = 900
WINDOW_WIDTH = 100
ALPHA = 0.05

# CFD params
DELAY_SAMPLES = 100
INV_FRAC = 3

# ROC curve generation
TOLERANCE = 100e-6
SECTION_TIME = 2e-3

# Misc
SNR = 3  # Signal-to-noise ratio
SLICE_START = 0
SLICE_END = 10000
FIGSIZE = (13, 5)
