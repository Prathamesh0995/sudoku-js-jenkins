pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('sudoku-image', '.')
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-token', url: '']) {
                    script {
                        docker.image('sudoku-image').push('latest')
                    }
                }
            }
        }
    }
}
