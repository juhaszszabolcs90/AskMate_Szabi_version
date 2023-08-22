pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build and Push Docker Image') {
            steps {
                script {
                    docker build -t juhaszszabolcs90/askmate:${env.BUILD_NUMBER} .
                    withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                        docker login -u $USERNAME -p $PASSWORD
                    }
                    docker push juhaszszabolcs90/askmate:${env.BUILD_NUMBER}
                }
//                 script {
//                     def dockerImage = docker.build("juhaszszabolcs90/askmate:${env.BUILD_NUMBER}")
//                     docker.withRegistry('https://dockerhub.com', 'dockerhub-credentials') {
//                         dockerImage.push()
//                     }
//                 }
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
