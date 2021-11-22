FROM tomcat
RUN apt-get update -y
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install git -y
RUN cd /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
RUN cd /target
RUN cp hello-1.0 /var/lib/tomcat9/webapps/