pipeline {
    agent any
    stages {
        stage('Clone'){
            steps {
                //  Link github //
                git 'https://github.com/Hasyndeyyy/demojenkins.git'
            }
        }
        // stage
        stage('Buil-dockerfile'){
            steps {
                //  URL dockerfile  //
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                 // some block
                 sh 'docker build -t danphuong/my-images:lts .'
                 sh 'docker push danphuong/my-images:lts'
            }
        }
    }
}