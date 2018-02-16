pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'This is the build step'
      }
    }
    stage('XaTester tests') {
      steps {
        sh '''echo "Current dir: "
pwd
cp /Users/steenbrahe/workspaces/eclipse-oxygen/XaTesterOnHost/build/libs/*.jar .
cp /Users/steenbrahe/workspaces/eclipse-oxygen/XaTesterOnHost/build/libs/*.sh .
echo "Content of dir:"
ls -la
./xatestercli.sh -e simulator -f . --recursive -G -S COBOL -s https://192.168.186.131 -u $userid -p $password -x -g TestResults'''
        junit(testResults: 'TestResults/JUnitReport.xml', healthScaleFactor: 10)
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploy step'
      }
    }
  }
}
