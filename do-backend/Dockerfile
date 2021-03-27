FROM openjdk:16-jdk-alpine
VOLUME /tmp
EXPOSE 8080
RUN apk add --no-cache bash
RUN mkdir -p /app
ADD target/*.jar app/do-0.0.1-SNAPSHOT.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar app/do-0.0.1-SNAPSHOT.jar" ]