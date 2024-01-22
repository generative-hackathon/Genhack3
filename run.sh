#!/bin/bash

##############################################
# DO NOT MODIFY THIS FILE
##############################################

# Script for running your simulation
##############################################

run(){
    # checkout master
    git checkout master
    echo "Switch to master!"
    # pull the repo !
    git pull origin master
    echo "Repo pulled!"  

    echo "Running the model ..." 
    docker image rm -f genhack3  # delete the existing image
    docker build -t genhack3 .  # build new image
    docker run --name container-sim -v ${PWD}/data:/data genhack3 # run the container and mount the data as volume
    # copy output files to host
    docker cp container-sim:/check.log ${PWD}/check.log
    docker cp container-sim:/output.npy ${PWD}/output.npy
    # remove the contaier
    docker rm container-sim
    echo "... end of run" 
    
    git add check.log
    git commit -m "New submission"
    git push origin master
    echo "Pushed to the repo" 
}

run