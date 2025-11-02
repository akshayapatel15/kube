pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the Docker image...'
                bat 'docker build -t kube:latest .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add actual test commands here if needed
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the Docker container...'
                bat 'docker run -d --name kube-container -p 3000:3000 kube:latest'
            }
        }

        stage('Verify') {
            steps {
                echo 'Verifying running containers...'
                bat 'docker ps'
            }
        }
    }
}
