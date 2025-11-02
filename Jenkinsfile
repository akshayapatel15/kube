pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo '🔧 Building the Docker image...'
                bat '''
                docker build -t kube:latest .
                if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
                '''
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests...'
                bat '''
                echo No tests defined yet.
                REM You can add test scripts here
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying the Docker container...'
                bat '''
                docker rm -f kube-container 2>NUL
                docker run -d --name kube-container -p 3000:3000 kube:latest
                if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
                '''
            }
        }

        stage('Verify') {
            steps {
                echo '🔍 Verifying running containers...'
                bat 'docker ps'
            }
        }
    }
}
