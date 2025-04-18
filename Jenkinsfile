pipeline{
  agent any
  environment{
    IMAGE_NAME = 'nginx-html'
  }
  stages{
    stage("cloning the repo"){
        steps{
            git branch: 'main', url:'https://github.com/PragyaChauhan1401/practice_jenkins_2.git'
        }
    }
      stage("building docker image"){
          steps{
              bat "docker build -t  $IMAGE_NAME ."
              echo "pulled ubuntu image"
          }
      }
        stage("running docker container"){
            steps{
                bat "docker run -d -p 80:80 --name $IMAGE_NAME $IMAGE_NAME"
            }
        }
      }
  }
  