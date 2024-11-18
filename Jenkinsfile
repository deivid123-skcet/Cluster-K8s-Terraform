pipeline {
    agent { label 'vamobora' }
    tools {
        terraform 'terraform'
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        stage('Terraform plan') {
            steps {
                sh 'terraform init'
                }
            }
        }
    }
}
