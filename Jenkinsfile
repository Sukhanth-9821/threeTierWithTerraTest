node {
    stage ('Code Checkout') {
        
            try {
                echo 'Code Checkout'
                //checkout([$class: 'GitSCM', branches: [[name: '*/release1.0]], extensions: [], userRemoteConfigs: [[url: ‘https://github.com/Sukhanth-9821/threeTierWithTerraTest.git']]])
                checkout([$class: 'GitSCM', branches: [[name: '*/release1.0']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Sukhanth-9821/threeTierWithTerraTest.git']]])
                
                
            }
              catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
        
    }
    stage('TF_Init'){
        try{
            echo 'Hello 1one'
            sh 'terraform init'
        }
        catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
    }
    stage('TF_Plan'){
        try{
            sh 'terraform plan'
        }
        catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
    }
    stage('Decision_Stage'){
        try{
            input(id: 'userInput', message: 'Do you want to Apply Changes?', parameters: [
                    choice(choices: 'Yes\nNo', description: 'Choose Yes or No', name: 'Decision')])
        }
        catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
    }
    stage('TF_Apply'){
        when {
               expression {
                    // Check the user's choice
                    return params.Decision == 'Yes'
                }   
        }
        steps{   
           sh 'terraform apply'
        }
    }
    post {
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
