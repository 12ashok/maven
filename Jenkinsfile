node('master')
{
    stage('ContinuousDownload') 
    {
         git 'https://github.com/12ashok/maven.git'
    }
    stage('ContinuousBuild') 
    {
         sh label: '', script: 'mvn package'
    }
    stage('ContinuousDeployment')
    {
        sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/pipeline/webapp/target/webapp.war ubuntu@172.31.21.235:/var/lib/tomcat8/webapps/testenv.war'
    }
    stage('ContinuousTesting')
    {
        git 'https://github.com/12ashok/functional-testing.git'
        sh label: '', script: 'java -jar /home/ubuntu/.jenkins/workspace/pipeline/testing.jar'
    }
     stage('ContinuousDelivery')
    {
        input message: 'Waiting for Approval from the DM', submitter: 'Srinivas'
        sh label: '', script: 'scp /home/ubuntu/.jenkins/workspace/pipeline/webapp/target/webapp.war ubuntu@172.31.19.220:/var/lib/tomcat8/webapps/prodenv.war'
    }
    
    
}

