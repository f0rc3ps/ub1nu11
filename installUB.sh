#!/usr/bin/bash

echo "### Preparing your OS for installation on AlmaLinux, Fedora, Debian, openSUSE Tumbleweed, Rocky Linux and Ubuntu. OS's"
echo
sleep 5;

### Clean and prepare the ENV
systemctl stop docker.socket
systemctl stop docker.service

sleep 3;
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
rm -rf /var/lib/docker
rm -rf /etc/docker

### Install Docker
apt update && apt upgrade && apt autoremove -y
sudo curl -s https://raw.githubusercontent.com/nu11secur1ty/Docker/main/installer_24.04.sh | sh
echo "### Starting the Docker service...###"
systemctl start docker.service

### ENV
sleep 5;
echo "Please wait..."

# Install ub1nu11
git clone https://github.com/f0rc3ps/ub1nu11.git && sudo docker-compose -f ~/ub1nu11/docker-compose.yml up -d

### Clean installation:
#cd ..
#rm -rf ub1nu11/

exit 0;
