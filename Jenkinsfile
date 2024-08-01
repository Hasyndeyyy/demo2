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
                // Đăng nhập vào Docker registry và xây dựng Docker image
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t danphuong/my-images:lts .'
                    sh 'docker push danphuong/my-images:lts'
                }
            }
        }
    }
}
