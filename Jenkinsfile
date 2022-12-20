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
                sh 'docker.build -t springboot-deploy:${env.BUILD_NUMBER} .'



            }

        }
		stage('Deploy Dockerimage'){
            steps{

                  echo "Docker Image Tag Name: 'springboot-deploy${env.BUILD_NUMBER}'"
                  sh "docker stop springboot-deploy || true && docker rm springboot-deploy || true"
                  sh "docker run --name springboot-deploy -d -p 8081:8080 springboot-deploy:latest"
            }
        }
        
    }
}
