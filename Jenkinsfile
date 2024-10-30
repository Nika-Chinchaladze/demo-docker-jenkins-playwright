pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    bat 'rmdir /S /Q node_modules'
                    bat 'npm install'
                }
                bat 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                bat 'npx playwright test'
            }
            post {
                always {
                    archiveArtifacts artifacts: 'test-results/**/*', allowEmptyArchive: true
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}