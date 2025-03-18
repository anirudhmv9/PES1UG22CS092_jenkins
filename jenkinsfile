pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'g++ -o output main/hello.cpp' // Compile C++ file
            }
        }

        stage('Test') {
            steps {
                sh './output' // Run compiled executable
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }

    post {
        failure {
            echo 'Pipeline failed'
        }
    }
}
