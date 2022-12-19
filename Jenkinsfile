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
                sh 'docker build -t springboot-deploy:${env.BUILD_NUMBER} .'

           }
        }



                  stage('Deploy docker'){
                   steps{
                          echo "Docker Image Tag Name: ${dockerImageTag}"
                          sh "docker stop springboot-deploy || true && docker rm springboot-deploy || true"
                          sh "docker run --name springboot-deploy -d -p 8081:8081 springboot-deploy:${env.BUILD_NUMBER}"
                          }
                  }
        
    }
}
