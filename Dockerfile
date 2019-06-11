FROM openjdk:8u212-jdk-stretch
MAINTAINER xuxueli

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#ADD target/demo-0.0.1-SNAPSHOT.jar /app.jar
#ADD apache-maven-3.6.1 /usr/local/
#ENV MAVEN_HOME=/usr/local/apache-maven-3.6.1
#ENV PATH MAVEN_HOME/bin:$PATH

ENTRYPOINT ["sh","-c","java -jar /app.jar $PARAMS"]