FROM ubuntu:latest

RUN apt-get update && apt-get upgrade

# install admin stuff
RUN apt-get install -y htop nload vim curl wget git build-essential

# install python 2.7.x stuff
RUN apt-get install -y python-pip python-dev
RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv

# install java 8 stuff
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk

# install node 8 stuff
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# install ruby stuff
RUN apt-get install -y ruby-full

# install golang
RUN add-apt-repository ppa:gophers/archive
RUN apt update
RUN apt-get install -y golang-1.9-go

# ENTRYPOINT npm
CMD ["/bin/bash"]
