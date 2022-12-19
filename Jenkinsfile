pipeline{
    agent any
     tools {
              maven 'mvn'
            }

    stages{
        stage('Git clone'){
            steps{
                git 'https://github.com/shazforiot/HelloWorld-Springboot-App.git'
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
				sh 'docker.build("springboot-deploy:${env.BUILD_NUMBER}")'
            }
        }
		stage('Deploy Dockerimage'){
            steps{
                  //def dockerImageTag = "springboot-deploy${env.BUILD_NUMBER}"
                  echo "Docker Image Tag Name:springboot-deploy${env.BUILD_NUMBER}"
                  sh "docker stop springboot-deploy || true && docker rm springboot-deploy || true"
                  sh "docker run --name springboot-deploy -d -p 8081:8081 springboot-deploy:${env.BUILD_NUMBER}"
            }
        }
        
    }
}
