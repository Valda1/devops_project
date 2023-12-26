#getting base image
#FROM SCRATCH
FROM  ubuntu
USER root

COPY jenkins/jenkins.sh /usr/local/bin/jenkins/jenkins.sh

#gets executed during the build
RUN apt-get update

#gets executed when container gets created out of the image
CMD ["/usr/local/bin/jenkins/jenkins.sh"]
