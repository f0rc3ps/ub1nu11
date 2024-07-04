#!/usr/bin/bash
cd ${HOME}
docker stop ub1nu11
docker system prune -a
echo "Please wait..."
sleep 5;
rm -rf ub1nu11
git clone https://github.com/f0rc3ps/ub1nu11.git
cd ub1nu11/docker
docker-compose -f docker/docker-compose.yml up -d
cd ${HOME}
exit 0;
