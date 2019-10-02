@Library("jps@job_caching")

def cache=new com.docker.utilities.Cache()
def cached_stage=cache.cached_stage

pipeline {
  agent any
  stages {
    cached_stage('cached stage', "my_project/${BRANCH_NAME}", ['build']){
      steps {
        echo "Caching done here"
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
