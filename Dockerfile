# Use the latest official Ubuntu image
FROM ubuntu:latest

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install OpenSSH and other necessary packages including ansible, tcpdump, netstat, systemctl, ping, and traceroute
RUN apt-get update && \
    apt-get install -y \
    openssh-server \
    sudo \
    ansible \
    tcpdump \
    net-tools \
    iputils-ping \
    traceroute \
    systemd \
    telnet \
    netcat \
    iptables \
    wget \
    curl \
    vim \
    touch \
    sshpass \
    && rm -rf /var/lib/apt/lists/*

# Create the SSH directory and set proper permissions
RUN mkdir /var/run/sshd

# Set the root password (optional)
RUN echo 'root:password' | chpasswd

# Allow root login via SSH (optional but recommended for container use)
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose the SSH port
EXPOSE 22

# Start the SSH service
CMD ["/usr/sbin/sshd", "-D"]
