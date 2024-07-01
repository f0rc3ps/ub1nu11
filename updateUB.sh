#!/usr/bin/bash
cd ${HOME}
docker stop ub1nu11
docker system prune -a
echo "Please wait..."
sleep 5;
rm -rf ub1nu11
git clone https://github.com/f0rc3ps/ub1nu11.git
cd ${HOME}/ub1nu11
docker-compose up -d
exit 0;
