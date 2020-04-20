usermod -aG "$(ls -l /var/run/docker.sock | awk '{print $4}')" jenkins

chown jenkins:jenkins /var/run/docker.sock

chown -R jenkins:jenkins /var/jenkins_home

su -c apt update && apt install maven -y

/usr/local/bin/plugins.sh /usr/jenkins/plugins.txt

su -c /usr/local/bin/jenkins.sh jenkins


