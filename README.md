# ub1nu11 
***In development***

ub1nu11 is a strong IT multi-management platform containing many instruments and techniques.
This system is compatible with Debian and Ubuntu servers - the latest versions!

------------------------------------------------------------------------

![](https://github.com/nu11secur1ty/ub1nu11/blob/master/logo/background.png)

***WARNING: YOU NEED TO BE A ROOT USER***

## Install
```
env bash -c "$(curl -sL https://raw.githubusercontent.com/nu11secur1ty/ub1nu11/master/installUB.sh)"
```

## Uninstall:
```
env bash -c "$(curl -sL https://raw.githubusercontent.com/nu11secur1ty/ub1nu11/master/uninstallUB.sh)"
```
-----------------------------------------------------------------------------------

- - - ***Manual run, and `shell` access & generate the other tools***
```bash
git clone https://github.com/nu11secur1ty/ub1nu11.git
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
docker pull nu11secur1ty/ub1nu11:latest
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
docker run -d -p 8080:80 --name ub1nu11 nu11secur1ty/ub1nu11
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
git clone https://github.com/nu11secur1ty/ub1nu11.git
```
- Building a docker ub1nu11
```bash
docker build -t nu11secur1ty/ub1nu11 .
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
- [Grafana](https://grafana.com/docs/grafana/latest/setup-grafana/configure-docker/)

- 
- WARNING: This will remove your already composing `samurai ub1nu11` image and docker from your machine, and from docker ENV!

### Instruments:
- OWASP Risk Assessment Calculator supported by OPSEC
![](https://github.com/nu11secur1ty/ub1nu11/blob/master/doc/Calc.png)

**Have fun** ***engineers*** ;)
