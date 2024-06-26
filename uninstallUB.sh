#!/usr/bin/bash

echo "### Now stopping ${HOME}/ub1nu11."
docker stop ub1nu11
docker system prune -a
apt autoremove -y

# Clean docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sleep 3;
systemctl stop docker.socket
sleep 5;
systemctl stop docker.service
sleep 5;
sudo rm -rf /var/lib/docker 
sudo rm -rf /etc/docker
cd /etc/apt/sources.list.d/
rm -rf *docker*
apt autoremove -y
apt update && apt upgrade -y

echo "### Now removing ${HOME}/ub1nu11."
sudo rm -rf ${HOME}/ub1nu11
apt autoremove -y
exit 0;
