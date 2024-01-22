# Genhack3 - Simulation of the maize yield across the years in the context of the climate change ([website](https://www.polytechnique.edu/en/genhack-3-hackathon-generative-modelling))
<img src="https://www.polytechnique.edu/sites/default/files/styles/contenu_detail/public/content/pages/images/2023-12/Bani%C3%A8re_GenHack%20Challenge%202024.png?itok=QqlW6jKY">

Agriculture's exposure to climate impacts is not new, and farmers are the first witnesses and victims of these impacts. Increasingly early, intense and frequent heatwaves, changes in rainfall patterns and late frosts are having an increasingly harsh effect on agricultural production.
Given the importance of this sector, there is an urgent need to define resilient solutions for the future climate and develop new tool.
Changes in the climate can be seen in episodes of heavy rainfall, drought, and temperatures which can undermine food security by slowing down growth on a global scale. This drought is specifically affecting many crops, particularly maize. Maize is the world's most important cereal crop, making it an essential resource for millions of people.

**The purpose of this challenge is to build a spatial generator of annual maize yield.**

This repository contains the files required in the GenHack3 challenge. It contains:

- `data/`: folder containing the training data (`station49.csv`, `station80.csv`, `station40.csv`, `station63.csv`) and a noise file (` noise.npy`)
- `requirements.txt`: text file containing the libraries with their associated versions you used in the `model.py` file 
- `Dockerfile`: docker image in order to create a container
- `main.py`:  main python file containing the simulation function
- `model.py`: python file containing your generative model and for loading the parameters
- `parameters/`: folder where you **must** put the parameters of your model
- `run.sh`: bash script to run your simulation

## Contact
genhack@polytechnique.fr