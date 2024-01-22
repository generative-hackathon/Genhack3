##############################################
# DO NOT MODIFY THIS FILE
##############################################

from model import generative_model
import numpy as np
import logging


logging.basicConfig(filename="check.log", level=logging.DEBUG, 
                    format="%(asctime)s:%(levelname)s: %(message)s", 
                    filemode='w')

def simulate(noise):
    """
    Simulation of your Generative Model

    Parameters
    ----------
    noise : ndarray
        input of the generative model

    Returns
    -------
    output: array (noise.shape[0], 4)
        Generated yield containing respectively the 4 stations (49, 80, 40, 63)
    """

    try:
        output = generative_model(noise)
        message = "Successful simulation" 
        assert output.shape == (noise.shape[0], 4), "Shape error, it must be (noise.shape[0], 4). Please verify the shape of the output."
        
        # write the output
        np.save("output.npy", output)

    except Exception as e:
        message = e
                
    finally:
        logging.debug(message)

    return output

    
if __name__ == "__main__":
    noise = np.load("data/noise.npy")
    simulate(noise)
    
    
