# Use official Jenkins image as the base
FROM jenkins/jenkins:lts

# Switch to root user to install dependencies
USER root

# Update packages and install required dependencies
RUN apt-get update && apt-get install -y make g++ --fix-missing

# Switch back to Jenkins user
USER jenkins
