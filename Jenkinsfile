pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code
                git 'https://your-repository-url.git' // Replace with your repo URL
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    def image = docker.build("playwright-tests", "-f Dockerfile .")
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    // Run the tests in the Docker container
                    docker.image("mcr.microsoft.com/playwright:v1.48.2-jammy").inside {
                        sh 'npx playwright test' // Run the Playwright tests
                    }
                }
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
