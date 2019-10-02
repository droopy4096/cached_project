@Library(jps@job_caching)

pipeline {
  agent any
  stages {
    stage ('build') {
      steps {
        withCache("my_project/${BRANCH_NAME}", ['build']) {
          sh "make"
        }
      }
    }
  }
}
