#!/usr/bin/bash
docker stop ub1nu11
echo "Please wait..."
sleep 5;
cd ${HOME}
rm -rf ub1nu11
git clone https://github.com/f0rc3ps/ub1nu11.git
cd ${HOME}/ub1nu11
docker-compose -f docker-compose.yml down -v
docker-compose up -d
exit 0;
