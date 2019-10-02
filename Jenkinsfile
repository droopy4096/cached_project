@Library("jps@job_caching")

def cache=new com.docker.utilities.Cache()

pipeline {
  agent any
  stages {
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
