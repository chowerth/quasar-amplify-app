# To build image run: docker build -t <your username>/quasar-amplify-cicd .
# Example: docker build -t chowerth/quasar-build-image .
# This says "build a docker image named chowerth/quasar-build-image from the docker file in my current directory"

# To debug a build: 
# 1) docker commit <running commit hash> tempimagename
# 2) docker run -it --rm tempimagename sh
# Example: docker commit ac5977f8f6d1 tempimagename && docker run -it --rm tempimagename sh
FROM amazonlinux:2

ENV VERSION_NODE=12.18.2
ENV VERSION_YARN=1.22.4
ENV VERSION_AMPLIFY=4.24.0

# UTF-8 Environment
ENV LANGUAGE en_US:en
ENV LANG=en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# AWS Amplify Build Image Requirements https://docs.aws.amazon.com/amplify/latest/userguide/custom-build-image.html#setup

# Install Curl, Git, OpenSSL (AWS Amplify requirements)
# Install Tar (NVM requirement)
RUN touch ~/.bashrc
RUN yum -y update && \
    yum -y install \
    curl \
    git \
    openssl \
    tar \ 
    yum clean all && \
    rm -rf /var/cache/yum

# Install NVM/Node (AWS Amplify requirement) Find latest install script at https://github.com/nvm-sh/nvm
# Install Quasar CLI (Quasar Framework requirement) Find latest at https://quasar.dev/quasar-cli/installation
# Install AWS Amplify CLI Find latest at https://docs.amplify.aws/cli/start/install
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN /bin/bash -c ". ~/.bashrc && \
    nvm install $VERSION_NODE && \
    nvm alias default node && \
    nvm use $VERSION_NODE && \
    npm install -g @aws-amplify/cli @quasar/cli && \
    nvm cache clear"  

## Installing Cypress
# RUN /bin/bash -c ". ~/.nvm/nvm.sh && \
#     npm install -g --unsafe-perm=true --allow-root cypress"

ENTRYPOINT [ "bash", "-c" ]
