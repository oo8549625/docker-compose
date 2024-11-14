FROM jenkins/jenkins:2.479.1-lts-jdk17
USER root
RUN apt update -y && \
    apt install software-properties-common -y && \
    apt install ansible -y

USER jenkins