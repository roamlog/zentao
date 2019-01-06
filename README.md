# Docker Image for Zentao
[![Docker Build Status](https://img.shields.io/docker/build/roamlog/zentao.svg)](https://hub.docker.com/r/roamlog/zentao/)
[![Docker Pulls](https://img.shields.io/docker/pulls/idoop/zentao.svg)](https://hub.docker.com/r/roamlog/zentao/)
[![Docker Automated build](https://img.shields.io/docker/automated/idoop/zentao.svg)](https://hub.docker.com/r/roamlog/zentao/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/roamlog/zentao/latest.svg)](https://hub.docker.com/r/roamlog/zentao/)
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/roamlog/zentao/latest.svg)](https://hub.docker.com/r/roamlog/zentao/)

Auto build docker image for zentao(禅道).

DockerHub:[https://hub.docker.com/r/roamlog/zentao/](https://hub.docker.com/r/roamlog/zentao/)

Office Support:[http://www.zentao.net/](http://www.zentao.net/)
### Tags

**Open soure edition**

- `11.0`,`latest`

### QuickStart

``` bash
mkdir -p /srv/zentao/zbox && docker run -d -p 9000:9000 -p 33306:33306 \
        -e USER="root" -e PASSWD="password" \
        -e BIND_ADDRESS="false" \
        -e SMTP_HOST="163.177.90.125 smtp.exmail.qq.com" \
        -v /srv/zentao/zbox/:/opt/zbox/ \
        --name zentao \
        roamlog/zentao:latest
```

Note: Make sure your Host feed available on either port `9000` or `33306`.

### Environment configuration

* `USER` : set the web login database Adminer account.
* `PASSWD` : set the web login database Adminer password. 
* `BIND_ADDRESS` : if set value with false,the Mysql server will not bind-address.
* `SMTP_HOST` : set the smtp server IP and host.(If can't send mail,it will be helpful.)

Note: The zentao administrator account is **admin**,and init password is **123456**.
      And MySQL root account password is **123456**,please change password when you first login.

### Upgrade Version

> If you want upgrade the zbox version, just use the newest code to cover the zbox source code under the path `$volume/zbox/app/zentao/`,instead of useing latest docker image.
> [See Detail](https://www.zentao.net/book/zentaopmshelp/67.html)

### Building the image

Clone this git,modify `Dockerfile` or `docker-entrypoint` if you want.
Then execute the following command:

```bash
docker build -t zentao .
```
