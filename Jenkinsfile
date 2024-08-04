pipeline {
    agent any
    environment {
        PATH = "${env.PATH};C:\\Program Files\\Docker\\Docker\\resources\\bin"
    }
    stages {
        stage('Check Environment') {
            steps {
                bat 'echo %PATH%'
                bat 'docker --version'
            }
        }
        stage('Clone') {
            steps {
                git 'https://github.com/Hasyndeyyy/demo1.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub1', url: 'https://index.docker.io/v1/') {
                    bat 'docker build -t danphuong/python:3 .'
                    bat 'docker push danphuong/python:3'
                }
            }
        }
    }
}
