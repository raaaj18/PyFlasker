pipeline { //pipeline blck 1-5 is CI and 6 is CD
    agent {label "python-worker1-ec2"}
    stages { // bunch of jobs
         stage('deploy the app in dev env') { //job6
            steps {
                sh 'docker pull rajharsh1802/gfgpython43cicd:latest'
                sh 'docker run -dit --name webapp -p 80:80 rajharsh1802/gfgpython43cicd:latest'
            }
        }
    }
}
