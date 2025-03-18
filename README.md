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


---

### How to Use

1. Copy the entire content above.
2. Go to your GitHub repository.
3. Click on the **Add file** button and select **Create new file**.
4. Name the file `README.md`.
5. Paste the content into the file editor.
6. Commit the changes.

---

### Final Notes

- The `README.md` is now complete, visually appealing, and ready for GitHub.
- It includes all the necessary instructions, tips, and a friendly tone to guide users.

Let me know if you need further assistance! 🎉
📜 License
This project is licensed under the MIT License. See the LICENSE file for details.

💡 Tips
Use tcpdump to capture network traffic on specific interfaces.

Use Ansible to automate the capture process across multiple hosts.

Customize the hosts file to target multiple containers or remote servers.

❓ Need Help?
If you encounter any issues or have questions, feel free to open an issue on the GitHub repository.

🎉 Enjoy!
Happy capturing! 🎉

How to Use
Copy the entire content above.

Go to your GitHub repository.

Click on the Add file button and select Create new file.

Name the file README.md.

Paste the content into the file editor.

Commit the changes.

Final Notes
The README.md is now complete, visually appealing, and ready for GitHub.

It includes all the necessary instructions, tips, and a friendly tone to guide users.

Let me know if you need further assistance! 🎉
