FROM alpine:3.8
MAINTAINER Roamlog Lee <roamlog@gmail.com>

ENV ZENTAO_VER=11.0

ARG ZENTAO_URL=http://dl.hzbuvi.com/zentao/${ZENTAO_VER}/ZenTaoPMS.${ZENTAO_VER}.stable.zbox_64.tar.gz

COPY docker-entrypoint /usr/local/bin/docker-entrypoint

RUN apk update \
       && apk add --no-cache --virtual .build-deps \
       wget \
       && wget ${ZENTAO_URL} -O zbox.tar.gz \
       && mv zbox.tar.gz /tmp \
       && chmod +x /usr/local/bin/docker-entrypoint

HEALTHCHECK --start-period=20s --interval=45s --timeout=3s CMD wget http://localhost/ -O /dev/null || exit 1

EXPOSE 9000 33306

ENTRYPOINT ["docker-entrypoint"]