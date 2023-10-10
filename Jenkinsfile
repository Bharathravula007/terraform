pipeline {
    agent any

    stages {
        stage('gitcheck') {
            steps {
              git 'https://github.com/ravimanchi0321/terraform.git'
            }
        }
/*        stage('docker build') {
            steps {
                sh 'docker build -t "$JOB_NAME":v1."$BUILD_ID" .'
                sh 'docker tag "$JOB_NAME":v1."$BUILD_ID" ravikumarmanchi/"$JOB_NAME":v1."$BUILD_ID"'
                sh 'docker tag "$JOB_NAME":v1."$BUILD_ID" ravikumarmanchi/"$JOB_NAME":latest'
                sh 'docker rmi terraform:v1."$BUILD_ID"'
        }
        }
        stage('docker loging') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_hub', passwordVariable: 'pswd', usernameVariable: 'docker')]) {
                sh 'docker login -u="${docker}" -p="${pswd}"'
            }
        }
        }
*/        
        stage('terraform server') {
            environment {
                   AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
                   AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
                }
            
            steps {
                script {
                    dir('terraform') {
                      sh "terraform init"
                      sh "terraform apply -auto-approve"
                     // EC2_PUBLIC_IP = sh(
                       //   script: "terraform output instance_public_ip",
                         // returnStdout: true
                       // ).trim()
                    
                   }
                }
                
               
        }
        
    }
/*        
    stage('deploy') { 
        environment {
            DOCKER_CREDS = credentials 'docker_hub'
        }
        steps {
            script {
                echo "waiting for ec2 server to initialize"
                sleep (time: 90, unit: "SECONDS")
                
                echo "ec2 ip"
                echo "${EC2_PUBLIC_IP}"
                
                echo " deploy the nginx in terraform server"
                
                def ec2Instance = "ubuntu@${EC2_PUBLIC_IP}"
                
                sshagent(['aws']) {
                    sh "scp -o StrictHostKeyChecking=no server-cmds.sh ${ec2Instance}:/home/ubuntu"
                    
  
             }
            }
        }
    
    }
 */   
}
}

