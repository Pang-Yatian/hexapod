import numpy as np

smooth_factor = 50
initial_config = np.array([0,0.6,0])

def initialize():
    config = np.tile(initial_config, 6)
    angles0 = np.zeros(18)

    angles = np.linspace(angles0,config,smooth_factor,endpoint=True)

    return angles   #[smooth_factor, 18]


if __name__ == '__main__' :
    initialize()