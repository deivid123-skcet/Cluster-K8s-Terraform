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
                sh 'cd kubespray/ && mkdir -p inventory/mycluster/ && cp -rfp ../inventory.ini inventory/mycluster'
            }
        }
        stage('Criação do cluster Kubernetes com Kubespray') {
            steps {
                sh 'cd kubespray/ && ansible-playbook -i kubespray/inventory/mycluster/inventory.ini  --become --become-user=root cluster.yml'
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
