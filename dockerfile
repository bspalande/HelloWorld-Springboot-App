FROM lolhens/baseimage-openjre
ADD target/helloworld-0.0.1.jar helloworld-0.0.1.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "helloworld-0.0.1.jar"]