FROM openjdk:8-jdk
MAINTAINER Conmio developers
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential

#RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
#RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture)" \
#    && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture).asc" \
#    && gpg --verify /usr/local/bin/gosu.asc \
#    && rm /usr/local/bin/gosu.asc \
#    && chmod +x /usr/local/bin/gosu

RUN git clone https://github.com/ncopa/su-exec.git /tmp/su-exec \
    && cd /tmp/su-exec \
    && make \
    && chmod 770 su-exec \
    && mv ./su-exec /usr/local/sbin/

COPY script/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
