FROM ubuntu

RUN apt-get update
RUN apt-get install -y apt-transport-https wget gnupg2
RUN sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

RUN apt-get update
RUN apt-get -y install apt-utils
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get -y -q install dart

WORKDIR /tmp
RUN wget https://github.com/exercism/cli/releases/download/v3.0.13/exercism-3.0.13-linux-x86_64.tar.gz
RUN tar -xf exercism-3.0.13-linux-x86_64.tar.gz
RUN mv exercism /usr/bin/

RUN useradd dummy
RUN useradd dart
user dart
WORKDIR /home/dart
CMD sleep 1000000000
