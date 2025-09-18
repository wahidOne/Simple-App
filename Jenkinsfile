// Jenkinsfile
pipeline {
    // Run the pipeline inside a Docker container.
    agent {
        docker {
            image 'node:14-alpine' // Specify the Docker image to use.
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {
        stage('Build and Test') {
            steps {
                echo 'Running npm install...'
                sh 'npm install'
                echo 'Running tests...'
                sh 'npm test'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                // `docker build` is a common command to build an image from a Dockerfile.
                sh 'docker build -t my-app:latest .'
            }
        }

        stage('Push Docker Image') {
            steps {
                echo 'Pushing image to registry...'
                // `docker push` sends the image to a container registry.
                sh 'docker push my-app:latest'
            }
        }
    }
}
