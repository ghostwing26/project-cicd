pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'git@github.com:ghostwing26/project-cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("davengine:latest")
                }
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker stop webengine'
                sh 'docker run -d -p 80:80 --name davenginerun davengine:latest'
            }
        }
    }
}