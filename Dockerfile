FROM maven:3.8.1-openjdk-11

WORKDIR /var/docker

COPY docker ./

RUN mvn dependency:resolve
RUN mvn clean install -DskipTests
VOLUME [ "./" ]