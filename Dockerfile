FROM openjdk:8-jdk-slim
ENV PORT 8080
ENV CLASSPATH /opt/lib
EXPOSE 8080

# copy pom.xml and wildcards to avoid this command failing if there's no target/lib directory
COPY pom.xml target/lib* /opt/lib/

ARG JAR_FILE
COPY ${JAR_FILE} /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]