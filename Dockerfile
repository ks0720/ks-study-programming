FROM alpine

MAINTAINER ks0720

EXPOSE 80

RUN apk update

RUN apk add bash \
            vim \
            curl \
            openssh-server \
            supervisor 

RUN apk add python2

RUN apk add nginx

# python-pip
RUN sudo curl -kL https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python2

# fluentd
RUN sudo curl -L http://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh

RUN apk add ansible

RUN alias ll='ls -l'

CMD ["/usr/bin/supervisord"]
