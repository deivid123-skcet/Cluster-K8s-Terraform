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
    }
}
