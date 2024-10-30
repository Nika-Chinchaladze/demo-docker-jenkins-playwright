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
                    bat 'npx playwright install --with-deps'
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
