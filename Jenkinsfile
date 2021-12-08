pipeline {
    agent {
        docker {
            image 'ruby'
        }
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building or resolving dependencies'
                sh 'bundle install'
                sh 'gem install httparty'
            }
        }
        stage('Test') {
            steps {
                echo 'Running regressions tests'
                sh 'bundle exec cucumber -p html'
            }
        }
        stage('UAT') {
            steps {
                echo 'Wait for acceptions for users'
                input (message: 'Got to production?', ok: 'Yes')
            }
        }
        stage('Prod') {
            steps {
                echo 'Web app is ready :)'
            }
        }
    }
}