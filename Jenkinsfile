pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'javacal'
        DOCKER_HUB_CREDENTIALS = 'docker-hub-credentials'  // Replace with your Docker credentials ID in Jenkins
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/java-web-calculator.git'  // Replace with your repo URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                    // Push Docker image to Docker Hub
                    withCredentials([usernamePassword(credentialsId: DOCKER_HUB_CREDENTIALS, passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                        docker.withRegistry('https://index.docker.io/v1/', "${DOCKER_USERNAME}:${DOCKER_PASSWORD}") {
                            docker.image(DOCKER_IMAGE).push()
                        }
                    }
                }
            }
        }
    }
}

