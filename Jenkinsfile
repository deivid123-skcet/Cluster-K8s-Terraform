pipeline {
    agent { label 'proxmox' }
    tools {
        terraform 'terraform'
    }
    clouds {
        Datacenter 'proxmox'
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
        }
    }
}
