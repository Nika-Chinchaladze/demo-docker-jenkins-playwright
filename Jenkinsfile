pipeline {
    agent {
        docker {
            image 'mcr.microsoft.com/playwright:v1.48.2-jammy'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code
                git 'https://github.com/Nika-Chinchaladze/demo-docker-jenkins-playwright.git' // Replace with your repo URL
            }
        }
        stage('Install Dependencies') {
            steps {
                // Install dependencies inside the Docker container
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                // Run the Playwright tests inside the Docker container
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
