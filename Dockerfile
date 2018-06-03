FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install -qy abcde
RUN apt-get install -qy cdparanoia
RUN apt-get install -qy eject
RUN apt-get install -qy manpages 
RUN apt-get install -qy man-db
RUN apt-get install -qy flac

RUN apt-get remove -qy postfix
RUN apt-get clean
RUN apt-get purge

ADD abcde.conf /etc/abcde.conf

ENTRYPOINT ["/usr/bin/abcde"]
