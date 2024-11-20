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
                sh 'cd kubespray'
                sh 'cp -rfp inventory/sample inventory/mycluster'
                sh 'cp -rfp ../inventory.ini inventory/mycluster'
            }
        }
        stage('Criação do cluster Kubernetes com Kubespray') {
            steps {
                sh 'ansible-playbook -i inventory/mycluster/hosts.yaml  --become --become-user=root cluster.yml'
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
