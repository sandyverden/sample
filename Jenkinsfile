pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "./mvn compile"
               }
          }	  
stage("Package") {
     steps {
          sh "./mvn package"
     }
}

stage("Docker build") {
     steps {
	     
          sh "docker build -t itpaytren/sample-jenkins ."
     }
}

stage("Docker push") {
     steps {
	  //sh "docker login -u nikhilnidhi -p chinki12"

          sh "docker push itpaytren/sample-jenkins"
     }
}
stage("Deploy to staging") {
     steps {
		 sh "docker-compose up -d"
     }
}
}
