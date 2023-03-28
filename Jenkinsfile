pipeline{
    agent any
    stages{
        stage('BUILD MAVEN'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/nicomigu/jenkins-test']])
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    sh 'docker build -t nico/nico-jenkins-docker .'
                }
            }
        }
    }
}
