FROM openjdk:16-jdk-alpine
VOLUME /tmp
EXPOSE 8080
RUN apk add --no-cache bash
ADD target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]