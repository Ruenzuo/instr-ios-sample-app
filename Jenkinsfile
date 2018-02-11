pipeline {
    agent {
        label "macos-host"
    }
    stages {
        stage("Bootstrap") {
            steps {
                sh "bundle install"
                sh "bundle exec pod install"
            }
        }
        stage("Run instr") {
            steps {
                sh "bundle exec instr profile benchmark InstrSampleApp --workspace=InstrSampleApp.xcworkspace/ --server-port=8081"
            }
        }
        stage("Publish performance report") {
            steps {
                perfReport percentiles: '0,50,90,100', relativeFailedThresholdNegative: 50.0, relativeFailedThresholdPositive: 50.0, relativeUnstableThresholdNegative: 20.0, relativeUnstableThresholdPositive: 20.0, sourceDataFiles: 'instr.jtl'
            }
        }
    }
}
