FROM       rastasheep/ubuntu-sshd:14.04
MAINTAINER guojian_k@qq.com

RUN apt -y install git
RUN useradd git
RUN echo 'git:git' | chpasswd
RUN mkdir -p /home/git && chown git. /home/git
RUN usermod -s /usr/bin/git-shell git
RUN git init --bare /data.git && chown git. -R /data.git
