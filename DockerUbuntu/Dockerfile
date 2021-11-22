# Test, run tomcat into docker container
FROM ubuntu:20.04
RUN apt-get update -y
RUN apt install maven -y
RUN apt-get install default-jdk -y
RUN apt-get install git -y
RUN apt-get install tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package -f ./boxfuse-sample-java-war-hello
RUN cp ./boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/
ENV CATALINA_BASE=/var/lib/tomcat9
ENV PATH=/usr/share/tomcat9/bin:/usr/share/tomcat9:usr/share/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
EXPOSE 8080
CMD ["catalina.sh","run"]