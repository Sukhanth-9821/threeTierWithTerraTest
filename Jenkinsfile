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
    stage('Stage_3'){
        try{
            echo 'Hello 3'
        }
        catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
    }
    stage('Stage_4'){
        try{
            echo 'Hello 4'
        }
        catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
    }
}
