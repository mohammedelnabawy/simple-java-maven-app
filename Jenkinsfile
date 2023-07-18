pipeline {
    agent any
    tools {
        maven 'mvn'
        jdk 'jdk'
    }
    stages {
        stage("maven build"){
            steps {
                sh 'mvn -DskipTests install'
            }
        }
    }
}