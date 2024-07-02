# ub1nu11 
***In development***

ub1nu11 is a strong IT multi-management platform containing many instruments and techniques.
This system is compatible with Debian and Ubuntu servers - the latest versions!

------------------------------------------------------------------------

![](doc/ub1nu11.png)

- tools
![](doc/tools.png)

***WARNING: YOU NEED TO BE A ROOT USER***

### Install
```
env bash -c "$(curl -sL https://raw.githubusercontent.com/f0rc3ps/ub1nu11/master/installUB.sh)"
```
### Update
```
env bash -c "$(curl -sL https://raw.githubusercontent.com/f0rc3ps/ub1nu11/master/updateUB.sh)"
```
### Uninstall:
```
env bash -c "$(curl -sL https://raw.githubusercontent.com/f0rc3ps/ub1nu11/master/uninstallUB.sh)"
```
-----------------------------------------------------------------------------------

- - - ***Manual run, and `shell` access & generate the other tools***
```bash
git clone https://github.com/f0rc3ps/ub1nu11.git
cd ub1nu11
docker-compose up -d
# Web testing
http://localhost:8080/
http://localhost:8080/info.php
# Shell
cd ub1nu11/
docker-compose exec ub1nu11 /bin/bash
```
- Pull
```
docker pull f0rc3ps/ub1nu11:latest
docker images
docker run -d -p 8080:80 <Image:ID>
```
- - - default user and password:
```
user: opsec
password: Pr#d@TEL#ten#sAd0brEd06l#
```
## Starting the ub1nu11 dirrectly

```bash
docker run -d -p 8080:80 --name ub1nu11 f0rc3ps/ub1nu11
```

## MySQL management

```bash
bash logininside.sh
/etc/init.d/mysql start
/etc/init.d/mysql status
mysql -uroot -ppassword
```
- Note 
`You can use your IP`!

------------------------------------------------
# Build your image

- Getting a source
```bash
git clone https://github.com/f0rc3ps/ub1nu11.git
```
- Building a docker ub1nu11
```bash
docker build -t f0rc3ps/ub1nu11 .
```
# Building application
```bash
bash startsamurai.sh
```
# Testing ub1nu11 
- Apache
```url
http://localhost:8080/
```

# Stop ub1nu11 
```bash
bash stopsamurai.sh
```
# Removing of the already composed ub1nu11 image
```bash
docker system prune
docker system prune -a
```
### Tools
- [Grafana](https://grafana.com/docs/grafana/latest/setup-grafana/installation/docker/)
- [Hive](https://docs.thehive-project.org/thehive/legacy/thehive3/installation/install-guide/)
- [OWASP-Calculator](https://javierolmedo.github.io/OWASP-Calculator/)
- [Cortex](https://github.com/TheHive-Project/Cortex)


**Have fun** ***engineers*** ;)
