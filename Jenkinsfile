pipeline {
    agent any

    environment {
        // Set any required environment variables
    }

    stages {
        stage('Checkout SCM') {
            steps {
                git url: 'https://github.com/bodukal/JavaWeb3.git', credentialsId: 'github-credentials-id'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Docker build steps here
                }
            }
        }
        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                    // Docker push steps here
                }
            }
        }
    }
}

