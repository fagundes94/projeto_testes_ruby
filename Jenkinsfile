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
            }
        }
        stage('Test') {
            steps {
                echo 'Running regressions tests'
                sh 'bundle exec cucumber -p json'
                cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'reports', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
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