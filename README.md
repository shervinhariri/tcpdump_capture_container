# 🐳 tcpdump_capture_container 🐳

A Docker container with **Ansible**, **tcpdump**, and other networking tools for capturing network traffic. Perfect for network analysis and troubleshooting!

---

## 🚀 Features

- **Pre-installed tools**: Ansible, tcpdump, net-tools, ping, traceroute, telnet, netcat, iptables, wget, curl, vim, sshpass.
- **SSH server enabled** for remote access.
- **Root login enabled** (password: `password`).

---

## 🛠️ How to Use

```bash
# 1. Build the Docker Image
git clone https://github.com/your-username/tcpdump_capture_container.git
cd tcpdump_capture_container
docker build -t tcpdump_capture_container .

# 2. Run the Container
docker run -d -p 2222:22 --name tcpdump_container tcpdump_capture_container

# 3. Access the Container
ssh root@localhost -p 2222
# Password: password

# 4. Set Up Ansible
# Create an inventory file (hosts) with the target container's IP and credentials:
cat <<EOL > hosts
[targets]
localhost ansible_host=localhost ansible_port=2222 ansible_user=root ansible_ssh_pass=password
EOL

# 5. Run the Ansible Playbook
ansible-playbook -i hosts tcpdump_capture.yml
# Follow the prompts to start and stop the capture. The capture file will be saved to /tmp/tcpdump_output.pcap on your local machine.
