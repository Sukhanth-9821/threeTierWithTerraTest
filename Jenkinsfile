node {
    
    stage('Stage_1'){
        try{
            echo 'Hello 1one'
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
