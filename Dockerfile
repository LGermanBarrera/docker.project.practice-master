FROM adoptopenjdk/openjdk11
RUN apt-get update && apt-get install -y maven
WORKDIR /docker.project.practice
COPY ./src /docker.project.practice/src
COPY ./pom.xml /docker.project.practice/pom.xml
ENV SUITE=api

ENTRYPOINT ["mvn", "test", "-Dsuite=${SUITE}"]