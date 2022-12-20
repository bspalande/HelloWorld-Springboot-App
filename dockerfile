FROM openjdk:8-jdk-alpine
COPY ./target/helloworld-0.0.1.war /usr/app/
WORKDIR /usr/app
EXPOSE 8080:8081


ENTRYPOINT ["java","-jar","helloworld-0.0.1.war"]


