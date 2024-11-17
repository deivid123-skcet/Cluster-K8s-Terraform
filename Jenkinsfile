pipeline {
    agent { label 'vamobora' }
    stages {
        stage('Example') {
            agent any
            options {
                // Timeout counter starts BEFORE agent is allocated
                timeout(time: 1, unit: 'SECONDS')
            }
            steps {
                sh 'terraform init'
            }
        }
    }
}
