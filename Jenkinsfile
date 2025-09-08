pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Prathamesh0995/sudoku-js-jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('sudoku-image')
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: '64da986d-922f-49ed-81cc-af6bab9a2262', url: '']) {
                    script {
                        docker.image('sudoku-image').push('latest')
                    }
                }
            }
        }
    }
}
