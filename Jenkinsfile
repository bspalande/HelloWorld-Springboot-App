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
                //sh 'mvn clean install'
            }
        }
        stage('Create Dockerimage'){
            steps{
                sh 'docker build -t springboot-deploy:latest .'

            }
        }
		stage('Deploy Dockerimage'){
            steps{

                  sh "docker stop springboot-deploy || true && docker rm springboot-deploy || true"
                  sh "docker run --name springboot-deploy -d -p 8081:8081 springboot-deploy:latest"
            }
        }
        
    }
}
