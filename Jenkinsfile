import groovy.json.JsonSlurper;
node('slave') {
 stage ('SCM'){
    git url: "https://github.com/Elhousss/elkstack.git"
    // workaround, taken from https://github.com/jenkinsci/pipeline-examples/blob/master/pipeline-examples/gitcommit/gitcommit.groovy
   /* def commitid = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
    def workspacePath = pwd()
    sh "echo ${commitid} > ${workspacePath}/expectedCommitid.txt"*/
 }

 
 stage ('Run Application') {
      // Run application using Docker image
      sh "sudo docker-compose up -d"
 }

}
