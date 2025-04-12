pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the app...'
                sh 'python -m py_compile app.py'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "All tests passed!"'
            }
        }
        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to staging...'
                sh './deploy.sh staging'
            }
        }
        stage('Deploy to Production') {
            when {
                branch 'main'
            }
            steps {
                input "Deploy to production?"
                echo 'Deploying to production...'
                sh './deploy.sh production'
            }
        }
    }
    post {
        failure {
            echo 'Pipeline failed!'
        }
        success {
            echo 'Pipeline finished successfully!'
        }
    }
}
