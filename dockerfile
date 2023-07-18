from tomcat:8-jre11
USER root
COPY /var/lib/jenkins/workspace/java_app/target/devops_project.war /usr/local/tomcat/webapps/ROOT.war