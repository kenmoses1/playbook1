pipeline {
  agent any
    

    stages {
 

      stage('Build')
      {
        steps{
          bat 'npm install'
        }
    }


      stage('Test')
      {
        steps{
            bat 'npm test'
        }
      }

       stage('Deploy')
       {
         steps{
            echo 'deploying the applications'
        }
    }
}
}





