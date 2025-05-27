pipeline{
    agent any

    environment {
        VENV_DIR = 'venv'
    }
    stages {
        stage('Checkout'){
            steps{
                git 'https://github.com/Puffy3/aise.git'
            }
        }
        stage('Install requirements'){
            steps{
                sh 'python3 -m venv venv'
                sh './venv/bin/pip install -r requirements.txt'
            }
        }
        stage('Run Flask App'){
            steps{
                sh 'nohub ./venv/bin/python test.py &'
                sh 'sleep 5'
            }
        }
        stage('Test App'){
            steps{
                sh 'curl -f http://localhost:5000/ || (echo "Flask app is not running" && exit 1)'
            }
        }
    }
}