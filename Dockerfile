FROM python:3-alpine3.18
MAINTAINER starx <connect@starx.io>

RUN set -xe \
    && apk add --no-cache ca-certificates \
                          ffmpeg \
                          openssl \
    && pip3 install --no-cache-dir yt-dlp

WORKDIR /usr/src/app

ENTRYPOINT ["yt-dlp"]
CMD ["--help"]
