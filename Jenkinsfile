pipeline {
    agent {
        docker { image '12ashok/ubuntu' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'sh label: '', script: 'docker build -t . 12ashok/ubuntu''
            }
        }
    }
}
