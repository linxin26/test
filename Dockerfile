FROM linx/alpine:3.6
MAINTAINER linx<644299146@qq.com>

#default UTF-8 file.enconding
ENV LANG C.UTF-8

#auto detect JAVA_HOME dir
RUN { \
                echo '#!/bin/sh'; \
                echo 'set -e'; \
                echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
        } > /usr/local/bin/java-home \
        && chmod +x /usr/local/bin/java-home

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

ENV JAVA_ALPINE_VERSION 8.131.11-r2

RUN set -x \
         && apk add -U openjdk8-jre="$JAVA_ALPINE_VERSION" \
                 && [ "$JAVA_HOME" = "$(java-home)" ]