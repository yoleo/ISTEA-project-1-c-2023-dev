pipeline {
    agent any

    stages {
        stage('Rama Dev') {
            steps {
                echo "Nro de ejecución: ${env.BUILD_NUMBER}"
            }
        }
        stage('Maven Test 2') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Maven Bluild') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Delivery Artifact: Deploy en Tomcat') {
            steps {
                sh 'cp target/jsf-text.war /tmp/webapps/jsf-text-1.0.10.'+"${env.BUILD_NUMBER}"+'.war'
                
                echo "http://192.168.0.218:8888/jsf-text-1.0.10."+"${env.BUILD_NUMBER}"+"/index.xhtml"
            }
        }
    }
}
