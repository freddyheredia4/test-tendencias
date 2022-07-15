pipeline {
    agent any
    stages{
        stage ('Deploy'){
            agent {
                label: 'integracion'
            }
            steps {
                sh 'docker build -f devops/Dockerfile -t testfrontend:latest .'
                sh 'docker stack deploy -c devops/stack.yml tendencias-na'
            }
        }
    }
}