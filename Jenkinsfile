@Library("jps@job_caching")

def cache=new com.docker.utilities.Cache()

pipeline {
  agent any
  stages {
    // need to wrap special stage in the script tag:
    // https://stackoverflow.com/questions/53201656/extracting-an-entire-jenkins-stage-to-a-shared-library
    stage('wrapped stage') {
      steps {
        script {
          cache.cached_stage('cached stage', "my_project/${BRANCH_NAME}", ['build']){
            steps {
              echo "Caching done here"
            }
          }
        }
      }
    }
    stage ('build') {
      steps {
        script {
          cache.withCache("my_project/${BRANCH_NAME}", ['build']) {
            sh "make"
          }
        }
      }
    }
  }
}
