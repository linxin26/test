FROM linx/alpine-openjre-8:0.1
MAINTAINER linx<644299146@qq.com>

RUN mkdir -p /var/local/
ADD test-1.0-SNAPSHOT.jar /var/local/

#CMD ["java -jar /var/local/test-1.0-SNAPSHOT.jar"]
CMD ["ls /var/"]