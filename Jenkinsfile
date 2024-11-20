pipeline {
    agent { label 'vamobora' }
    tools {
        terraform 'terraform'
        ansible 'ansible'
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
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
                }
        }
        stage('Clonando repositorio do kubespray') {
            steps {
                sh 'rm -rf kubespray/'
                sh 'git clone https://github.com/kubernetes-sigs/kubespray.git'
            }
        }
        stage('Criação do cluster Kubernetes com Kubespray') {
            steps {
                sh 'cd kubespray/ && mkdir -p inventory/mycluster/ && cp -rfp ../inventory.ini inventory/mycluster && ansible-playbook -i inventory/mycluster/inventory.ini  --become --become-user=root cluster.yml'
            }
        }
        stage('Terraform destroy') {
            steps {
                input 'Você quer destruir o cluster?'
                sh 'terraform destroy -auto-approve'
                }    
            }
        }
    }
