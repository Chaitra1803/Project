pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}

