FROM jenkinsci/jenkins

# Install sudo and make jenkins sudoer to be able to call docker with sudo from inside jenkins container
USER root
RUN apt-get update && apt-get install -y sudo vim less jq wget && rm -rf /var/lib/apt/lists/*

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

RUN wget https://get.docker.com/builds/Linux/x86_64/docker-1.11.2.tgz && tar xf docker-1.11.2.tgz
RUN echo 'sudo /docker/docker $@' >> /usr/bin/docker
RUN chmod +x /usr/bin/docker

USER jenkins
