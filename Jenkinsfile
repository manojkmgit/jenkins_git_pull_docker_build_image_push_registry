pipeline {
    environment {
        registry = "manojkmhub/jenkins_php_push"
            registryCredential = 'docker_hub_cred'
            dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning our Git') {
            steps {
                //git 'https://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@github.com/manojkmgit/jenkins_docker_build_image_push_registry.git'
                git branch: "main", url: 'https://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@github.com/manojkmgit/jenkins_docker_build_image_push_registry.git'
            }
        }
        stage('Building our image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Cleaning up') {
            steps {
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}
