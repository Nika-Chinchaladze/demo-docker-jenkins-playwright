pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    sh 'npm install'
                }
            }
        }
        stage('Run Tests') {
            steps {
                sh 'npx playwright test'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}

