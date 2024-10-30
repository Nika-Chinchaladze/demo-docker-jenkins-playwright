pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-playwright-image .'
                }
            }
        }
        stage('Run Tests in Docker') {
            steps {
                script {
                    sh 'docker run --rm my-playwright-image'
                }
            }
        }
    }
    post {
        always {
            deleteDir()
        }
    }
}

