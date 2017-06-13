import groovy.json.JsonSlurper;
node('slave') {
 stage ('SCM'){
    git url: "https://github.com/Elhousss/elkstack.git"
    // workaround, taken from https://github.com/jenkinsci/pipeline-examples/blob/master/pipeline-examples/gitcommit/gitcommit.groovy
    def commitid = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
    def workspacePath = pwd()
    sh "echo ${commitid} > ${workspacePath}/expectedCommitid.txt"
 }
}
node('slave') {
    def elk 
 stage ('Build image'){
    /* This builds the actual image; synonymous to
     * docker build on the command line */

     elk = docker.build("elhousss/elkstack")
 }
 
 stage ('Push image'){
     /* we'll push the image with two tags:
     * First, the incremental build number from Jenkins
     * Second, the 'latest' tag. */
     // https://hub.docker.com/r/elhousss/elkstack

     withDockerRegistry([credentialsId: 'elhousss', url: 'https://index.docker.io/v1/']) {
        elk.push("${env.BUILD_NUMBER}")
        elk.push("latest")
     }
 }
 /*stage ('Run Application') {
      // Run application using Docker image
      sh "docker run -d -p 8090:8090 -v /tmp:/tmp --name image-app elhousss/spring-boot-slf4j"
 }*/
}
