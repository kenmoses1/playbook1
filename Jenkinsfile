pipeline {
  agent any
    
    tools {nodejs "NodeJS"}



    stages {
      stage('Git') 
      {
        steps {
          git 'https://github.com/kenmoses1/playbook1.git'
      }
    }

      stage('Build')
      {
        steps{
          sh 'npm install'
        }
    }


      stage('Test')
      {
        steps{
            sh 'npm test'
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





