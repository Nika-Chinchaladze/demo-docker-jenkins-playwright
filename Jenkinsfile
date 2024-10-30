pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    bat 'npm install'
                }
            }
        }
        stage('Run Tests') {
            steps {
                bat 'npx playwright test'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
