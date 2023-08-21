pipeline {
    agent any
    environment {
        // Defining environment variables if needed
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build and Push Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build("askmate_szabi_version-app:${env.BUILD_NUMBER}")
                    docker.withRegistry('https://dockerhub.com', 'dockerhub-credentials') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
    post {
        always {
            // Clean up or other finalization steps if needed
        }
        success {
            // Steps to execute if the pipeline is successful
        }
        failure {
            // Steps to execute if the pipeline fails
        }
    }
}
