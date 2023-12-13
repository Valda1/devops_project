#!/bin/bash

#VARIABLES
DOCKER_IMAGE="jenkins/jenkins:lts"
CONTAINER_NAME="jenkins"
JENKINS_PORT="8080"

#RUN JENKINS CONTAINER
echo "Starting Jenkins container ..."
docker run -p $JENKINS_PORT:8080 -p 5000:5000 -d -v jenkins_home:/var/jenkins_home --name $CONTAINER_NAME $DOCKER_IMAGE