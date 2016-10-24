node {
    stage 'Compile'
    
    git 'https://github.com/helpermethod/service-registry'
    
    withEnv(["PATH+MAVEN=${tool 'mvn3'}/bin"]) {
        sh 'mvn clean package'
        sh "docker build -t service-registry:$BUILD_NUMBER ."
    }
    
    stage 'Deploy'
    
    sh "docker tag service-registry:$BUILD_NUMBER hub.predic8.de/service-registry:$BUILD_NUMBER"
    sh "docker push hub.predic8.de/service-registry:$BUILD_NUMBER"
}
