@Library("jps@job_caching")

def cache=new com.docker.utilities.Cache()

pipeline {
  agent {
    label 'ubuntu-1804-overlay2'
  }
  stages {
    stage ('build') {
      steps {
        script {
          cache.withCache("public/my_project/${BRANCH_NAME}", ['build']) {
            sh "make"
          }
          dir('build'){
            deleteDir()
          }
        }
      }
    }
  }
}
