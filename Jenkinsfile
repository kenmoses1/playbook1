pipeline {
  agent any

    tools {nodejs "NodeJS"}
    
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





