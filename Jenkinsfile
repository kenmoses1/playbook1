pipeline {
  agent any

    tools {nodejs "nodejs"}
    
    stages{

      stage("build"){
        steps{
            sh 'install npm'
        }
    }


      stage("test"){
          steps{
            sh 'test npm'
        }
      }

       stage("deploy"){
          steps{
            echo 'deploying the applications'
        }
    }
}
}





