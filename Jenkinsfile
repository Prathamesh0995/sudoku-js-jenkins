pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('prathamesh1809/sudoku-image', '.')
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: '95e21baa-8967-46ec-bdbe-34b5b3e61ba5', url: '']) {
                    script {
                        docker.image('sudoku-image').push('latest')
                    }
                }
            }
        }
    }
}
