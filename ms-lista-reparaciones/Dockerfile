FROM openjdk:17
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} ms-lista-reparaciones.jar
ENTRYPOINT ["java","-jar","/ms-lista-reparaciones.jar"]