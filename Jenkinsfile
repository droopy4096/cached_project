@Library("jps@job_caching")

def cache=com.docker.utilities.Cache()

pipeline {
  agent any
  stages {
    stage ('build') {
      steps {
        cache.withCache("my_project/${BRANCH_NAME}", ['build']) {
          sh "make"
        }
      }
    }
  }
}
