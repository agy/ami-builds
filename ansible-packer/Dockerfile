FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

ENV ANSIBLE_VERSION 2.4
ENV PACKER_VERSION 1.1.1
ENV PACKER_SHA256 e407566e2063ac697e0bbf6f2dd334be448d58bed93f44a186408bf1fc54c552

# Install dependencies
RUN apt-get update && \
    apt-get --yes install --no-install-recommends \
        awscli \
        ansible \
        curl \
        git \
        openssh-client \
        software-properties-common \
        unzip

# Install ansible from PPA (required for systemd management support)
RUN add-apt-repository ppa:ansible/ansible-${ANSIBLE_VERSION} && \
    apt-get update && \
    apt-get --yes install --no-install-recommends ansible

# Download and install packer
RUN cd /tmp && \
    curl --silent --output packer.zip https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256} packer.zip" | sha256sum --check && \
    unzip packer.zip && \
    install --mode=0755 packer /usr/local/bin/packer && \
    rm -f /tmp/packer /tmp/packer.zip
