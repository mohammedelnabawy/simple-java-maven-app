from tomcat:8-jre11
USER root
COPY target/devops_project.war /usr/local/tomcat/webapps/ROOT.war