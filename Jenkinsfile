pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "mvn compile"
               }
          }
         
		   //stage("Code coverage") {
  //   steps {
         // sh "./gradlew jacocoTestReport"
         // sh "./gradlew jacocoTestCoverageVerification"
     //}z
//}
		  
stage("Package") {
     steps {
          sh "mvn package"
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
	
         // sh "docker run -d --rm -p 8765:8080 --name calculator_1 nikhilnidhi/calculator_1"
		 sh "docker-compose up -d"
     }
}

//stage("Acceptance test") {
//    steps {
//          sleep 60
//          //sh "./acceptance_test_docker.sh"
//     }
//}
     }
	 post {
     always {
         sh "docker-compose down"
     }
}
}
