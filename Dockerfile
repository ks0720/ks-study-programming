FROM ubuntu

MAINTAINER ks0720

EXPOSE 443

RUN apt-get update

RUN apt-get install vim

RUN apt-get install python2.7

RUN apt-get install nginx

RUN apt-get install ansible
