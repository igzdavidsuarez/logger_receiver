FROM java:7
MAINTAINER David Suarez davsuacar@gmail.com

RUN mkdir /opt/flume
RUN wget -qO- http://archive.apache.org/dist/flume/1.6.0/apache-flume-1.6.0-bin.tar.gz \
  | tar zxvf - -C /opt/flume --strip 1

ADD start-flume.sh /opt/flume/bin/start-flume.sh
RUN chmod 775 /opt/flume/bin/start-flume.sh

ENV PATH /opt/flume/bin:/opt/java/bin:$PATH