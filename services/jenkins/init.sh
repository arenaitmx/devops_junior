usermod -aG "$(ls -l /var/run/docker.sock | awk '{print $4}')" jenkins

chown jenkins:jenkins /var/run/docker.sock

chown -R jenkins:jenkins /var/jenkins_home

su -c sudo apt update && sudo apt -y install maven make

curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

/usr/local/bin/plugins.sh /usr/jenkins/plugins.txt

su -c /usr/local/bin/jenkins.sh jenkins


