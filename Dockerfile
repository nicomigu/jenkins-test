FROM openjdk:8
EXPOSE 8080
ADD target/nico-jenkins-docker.war nico-jenkins-docker.war
ENTRYPOINT [ "java", "-war", "nico-jenkins-docker.war"  ]
