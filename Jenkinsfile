pipeline {
    agent any
    stages {
        stage('Check Environment') {
            steps {
                sh 'echo $PATH'
            }
        }
        stage('Clone') {
            steps {
                git 'https://github.com/Hasyndeyyy/demojenkins.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub1', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t danphuong/python:3 .'
                    sh 'docker push danphuong/python:3'
                }
            }
        }
    }
}
