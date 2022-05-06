pipeline {
    agent any
 
 stages {
    
    stage('Build Docker Image') {
           steps {
              
                sh 'docker build -t node-demoapp .' 
                sh 'docker tag node-demoapp sri28vignesh/node-demoapp:latest'
                sh 'docker tag node-demoapp sri28vignesh/node-demoapp:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish Image') {
          
        steps {
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
          sh  'docker push sri28vignesh/node-demoapp:latest'
          sh  'docker push sri28vignesh/node-demoapp:$BUILD_NUMBER' 
        }
                  
          }
        }
     
//       stage('Run Docker container on Jenkins Agent') {
             
//             steps 
//    {
//                 sh "docker run -d -p 5000:5000 sri28vignesh/node-demoapp"
 
//             }
//         }
//  stage('Run Docker container on remote hosts') {
             
//             steps {
//                 sh "docker -H ssh://ec2-user@ip-10-0-0-126 run -d -p 5000:5000 sri28vignesh/node-demoapp"
 
//             }
//         }
    }
 }