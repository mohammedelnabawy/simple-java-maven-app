pipeline {
    agent any
    tools {
        maven 'mvn'
        jdk 'jdk'
    }

    environment {
        NUXUS_URL = 'ec2-44-204-197-127.compute-1.amazonaws.com:5000'
    }

    stages {
        stage("maven build"){
            steps {
                sh 'mvn -DskipTests install'
            }
        }
        stage("build docker file"){
            steps {
                withCredentials([usernamePassword(credentialsId: 'nexus_credentials',usernameVariable: 'NEXUS_USERNAME',passwordVariable: 'NEXUS_PASS')]){
                  sh 'docker build -t ${NUXUS_URL}/repository/docker-repo/simple-java-app .'
                  sh 'docker login ${NUXUS_URL} -u ${NEXUS_USERNAME}  -p ${NEXUS_PASS}'
                  sh 'docker push ${NUXUS_URL}/repository/docker-repo/simple-java-app'
                }
            }
        }
    }
}