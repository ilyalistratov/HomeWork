FROM tomcat:latest
RUN ls
RUN pwd
RUN apt-get update -y
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install git -y
RUN ls
RUN pwd
WORKDIR /home/
RUN ls
RUN pwd
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN ls
RUN pwd
WORKDIR boxfuse-sample-java-war-hello
RUN ls
RUN pwd
RUN mvn package
RUN ls
RUN pwd
WORKDIR /target
RUN ls
RUN pwd
WORKDIR cp hello-1.0.war /var/lib/tomcat/webapps/
RUN ls
RUN pwd