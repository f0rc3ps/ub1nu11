#!/usr/bin/bash

echo "### Now stopping ${HOME}/ub1nu11."
docker stop ub1nu11
docker system prune -a
apt autoremove -y

# Clean docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sudo rm -rf /var/lib/docker 
sudo rm -rf /etc/docker
cd /etc/apt/sources.list.d/
rm -rf *docker*
apt autoremove -y
apt update && apt upgrade -y

### ENV
# tpotce > NOT WORKING
#cd env/tpotce/
#docker-compose -f ~/tpotce/docker-compose.yml down -v
#bash uninstall.sh

echo "### Now removing ${HOME}/ub1nu11."
sudo rm -rf ${HOME}/ub1nu11
apt autoremove -y
exit 0;
