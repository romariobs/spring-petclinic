pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'mvn package'
            }
        }

        stage('tests') {
            steps {
            	echo "should running tests"
            }
        }

        stage('deploy') {
            steps {
            	echo "should deploy to something"
            }
        }
    }

    post {
      // Always runs. And it runs before any of the other post conditions.
      always {
        // Let's wipe out the workspace before we finish!
        deleteDir()
      }

      success {
       echo "Build succeeded"
      }

      failure {
        echo "Build failed"
      }

      changed {
      	echo "build changed"
      }
    }

}