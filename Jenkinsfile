pipeline{
    agent any
     tools {
          maven 'mvn'

        }
    stages{
        stage('Git clone'){
            steps{
                git 'https://github.com/bspalande/HelloWorld-Springboot-App.git'
            }
        }
        
        stage('maven build'){
            steps{
                sh 'mvn package'
            }
        }
        stage('Create Dockerimage'){
            steps{
                sh 'docker build -t thetips4you/springboot:latest .'
            }
        }
        
    }
}
