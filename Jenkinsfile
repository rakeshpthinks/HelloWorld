pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mkdir -p build'
                sh 'cd build && cmake .. && make'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t hello-world-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm hello-world-app'
            }
        }
    }
}

