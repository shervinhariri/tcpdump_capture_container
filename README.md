# tcpdump_capture_container

A Docker container with Ansible, tcpdump, and other networking tools for capturing network traffic.

## Features
- Pre-installed tools: Ansible, tcpdump, net-tools, ping, traceroute, telnet, netcat, iptables, wget, curl, vim, sshpass.
- SSH server enabled for remote access.
- Root login enabled (password: `password`).

## How to Use

### 1. Build the Docker Image
Clone this repository and build the Docker image:

```bash
git clone https://github.com/your-username/tcpdump_capture_container.git
cd tcpdump_capture_container
docker build -t tcpdump_capture_container .
