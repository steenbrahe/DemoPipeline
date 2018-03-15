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
        sh '''echo "Java version"
java -version

echo "Current dir: "
pwd

echo "Copying cli files to ws dir"
cp /opt/xatester/cli/*.jar .
cp /opt/xatester/cli/*.sh .
echo "Content of ws dir:"
ls -la
./xatestercli.sh -e simulator -f . --recursive -G -S COBOL -s https://192.168.186.130:8447 -u XATUSER -p 123456 -x -g TestResults'''
        junit(testResults: 'TestResults/JUnitReport.xml', healthScaleFactor: 10)
      }
    }
    stage('Deploy') {
      parallel {
        stage('Deploy') {
          steps {
            echo 'Deploy step'
          }
        }
        stage('Sonar scan') {
          steps {
            echo 'Scan source/tests for Sonar Qube'
          }
        }
        stage('Notify') {
          steps {
            echo 'Send email'
          }
        }
      }
    }
  }
}