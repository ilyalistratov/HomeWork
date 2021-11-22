FROM tomcat:latest
RUN apt-get update -y
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install git -y
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /target
WORKDIR cp hello-1.0.war /var/lib/tomcat/webapps/