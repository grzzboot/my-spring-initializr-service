FROM adoptopenjdk/openjdk11:alpine-slim
ADD target/my-spring-initializr-service.jar /app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]