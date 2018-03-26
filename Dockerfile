FROM python:3-alpine
MAINTAINER starx <connect@starx.io>

RUN set -xe \
    && apk add --no-cache ca-certificates \
                          ffmpeg \
                          openssl \
    && pip3 install --no-cache-dir youtube-dl 

WORKDIR /usr/src/app

ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
