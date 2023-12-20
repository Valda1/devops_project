#getting base image
#FROM SCRATCH
FROM  ubuntu

#gets executed during the build
RUN apt-get update

#gets executed when container gets created out of the image
CMD [ "echo", "Hello world!" ]
