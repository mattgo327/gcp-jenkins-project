pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                sshagent (credentials: ['github-ssh-key]) {
                    git 'git@github.com:mattgo327/gcp-jenkins-project'
                }
            }
        }
    }



        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Manual Approval') {
            steps {
                input "Approve?"
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}
