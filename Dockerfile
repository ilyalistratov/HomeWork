FROM tomcat
RUN apt-get update -y
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install git -y
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
RUN cp hello-1.0 /var/lib/tomcat9/webapps/
RUN ls
RUN pwd