pipeline {

    agent any
	
    stages {
       stage('Killing existing container if running') {
            steps {
                echo 'kill docker container if exists'
                sh 'for container_id in $(sudo docker ps  --filter="name=sloka" -q);do sudo docker stop $container_id && sudo docker rm $container_id;done'
            }
        }
        stage('Building...') {
            steps {
                sh "pwd"
                echo 'Building....'
                docker rmi -f sloka
                docker build -t sloka .
            }
        }

        stage('Spinning up the container') {
            steps {
                docker run -d -it --name sloka -p 80:80 -v /var/lib/jenkins/workspace/testsloka1:/var/www/html sloka
            }
        }

    }
}


