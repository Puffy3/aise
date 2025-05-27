pipeline {
    agent any

    environment {
        VENV = 'venv'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/Puffy3/aise.git'
            }
        }

        stage('Install requirements') {
            steps {
                bat 'python -m venv %VENV%'
                bat '%VENV%\\Scripts\\python -m pip install --upgrade pip'
                bat '%VENV%\\Scripts\\pip install -r requirements.txt'
            }
        }

        stage('Run Flask App') {
            steps {
                bat '%VENV%\\Scripts\\python test.py'
            }
        }
    }
}
