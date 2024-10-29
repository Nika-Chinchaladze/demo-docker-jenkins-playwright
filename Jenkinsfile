pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code
                git 'https://github.com/Nika-Chinchaladze/demo-docker-jenkins-playwright.git'
            }
        }
        stage('Build and Run Tests') {
            agent {
                docker {
                    image 'mcr.microsoft.com/playwright:v1.48.2-jammy'
                    args '-u root:root' // Run as root to avoid permission issues
                }
            }
            steps {
                // Install dependencies inside the Docker container
                sh 'npm install'
                
                // Run the Playwright tests
                sh 'npx playwright test'
            }
        }
    }
    post {
        always {
            // Clean up after the build
            cleanWs()
        }
    }
}
