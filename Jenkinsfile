pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t ca-project .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'docker run ca-project python tests.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'docker container stop ca-prod'
                sh 'docker container rm ca-prod'
                sh 'docker container run --name ca-prod -d -p 80:5000 ca-project'
            }
        }
    }
}
