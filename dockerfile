FROM lolhens/baseimage-openjre
ADD target/helloworld-0.0.1.jar helloworld-0.0.1.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "helloworld-0.0.1.jar"]