pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from Git repository
                git branch: 'main', url: 'https://github.com/beeru405/calculator-app-.git'
            }
        }

        stage('Build and Test') {
            steps {
                // Use Maven to build and test the project
                sh 'mvn clean test install'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                // Copy the war file to Tomcat webapps directory
                deploy adapters: [tomcat8(credentialsId: 'tomcat', path: '', url: 'http://192.168.138.114:8081/')], contextPath: null, war: '**/*.war'
            }
        }

        stage('API Testing') {
            steps {
                script {
                    // Perform API testing for GET and POST methods
                    sh 'curl -X GET http://192.168.138.114:8081/your_app_name/'
                    sh 'curl -X POST -d "operand1=2&operand2=3&operation=add" http://192.168.138.114:8081/your_app_name/calculate'
                }
            }
        }
    }

    post {
        success {
            // Notify success, send emails, or perform other post-build actions
            echo 'Deployment successful!'
        }
        failure {
            // Notify failure, send emails, or perform other post-build actions
            echo 'Deployment failed!'
        }
    }
}
