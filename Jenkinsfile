pipeline {
    agent any

    stages {
        stage('Build and Test') {
            steps {
                script {
                    // Set up your environment and dependencies

                    sh 'pip install -r requirements.txt'
                    sh 'python -m unittest test_calculator.py'
                }
            }
        }

        stage('Database Setup') {
            steps {
                script {
                    // Set up MySQL database
                    sh 'mysql -u mysql -pmysql < database.sql'
                }
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                script {
                    // Deploy to Tomcat
                    sh 'cp *.jsp $CATALINA_HOME/webapps/your_app_name/'
                }
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
}
