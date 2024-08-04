pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                // Link github
              git 'https://github.com/Hasyndeyyy/demojenkins.git'
            }
        }
        stage('Build Docker Image') {
            steps {
               // 
               withDockerRegistry(credentialsId: 'docker-hub1', url: 'https://index.docker.io/v1/') {
               // build and push
               sh 'docker build -t danphuong/python:3 .'
               sh 'docker push danphuong/python:3'
            }
            }
        }
    }
}
