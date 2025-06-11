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
                sh 'docker stop davenginerun'
                sh 'docker rm davenginerun'
                sh 'docker rmi davengine:latest'
                
                script {
                    dockerImage = docker.build("davengine:latest")
                }
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 80:80 --name davenginerun davengine:latest'
            }
        }
    }
}