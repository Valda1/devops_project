#!/bin/bash

#VARIABLES
DOCKER_IMAGE="jenkins/jenkins:lts"
CONTAINER_NAME="jenkins"
JENKINS_PORT="8080"

#CHECK IF CONTAINER ALREADY EXISTS
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "Container already exists."
    echo "Stopping and removing existing Jenkins container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

#RUN JENKINS CONTAINER
echo "Starting Jenkins container ..."
docker run -p $JENKINS_PORT:8080 -p 5000:5000 -d -v jenkins_home:/var/jenkins_home --name $CONTAINER_NAME $DOCKER_IMAGE