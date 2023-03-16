from java:8-jdk
EXPOSE 8080
ADD target/nico-jenkins-docker.war nico-jenkins-docker.war
ENTRYPOINT [ "java", "-war", "nico-jenkins-docker.war"  ]