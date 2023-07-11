pipeline {
    agent any

    tools {node "nodejs"}
    
    stages{
        stage("build")
           steps{
            sh 'install npm'
        }
    }

    stages{
       stage("test")
          steps{
            sh 'test npm'
        }
    }

    stages{
       stage("deploy")
          steps{
            echo 'deploying the applications'
        }
    }
}





