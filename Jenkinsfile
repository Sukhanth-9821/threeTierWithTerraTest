node {
    stage ('Code Checkout') {
        
            try {
                echo 'Code Checkout'
                checkout([$class: 'GitSCM', branches: [[name: '*/release1.0]], extensions: [], userRemoteConfigs: [[url: ‘https://github.com/Sukhanth-9821/threeTierWithTerraTest.git']]])
            }
              catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
        
    }
    stage('Stage_1'){
        try{
            echo 'Hello 1one'
            sh 'pwd'
            sh 'ls -al'
        }
        catch(Exception e) {
            currentBuild.result = 'FAILURE'
            error("Build failed: ${e.message}")
        }
    }
    stage('Stage_2'){
        try{
            echo 'Hello 2'
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
