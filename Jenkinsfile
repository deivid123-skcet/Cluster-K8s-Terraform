pipeline {
    agent { label 'vamobora' }
    tools {
        terraform 'terraform'
    }
    clouds {
        label 'Datacenter(proxmox)'
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
