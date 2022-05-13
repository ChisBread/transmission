FROM ghcr.io/linuxserver/baseimage-alpine:3.15
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add --update ca-certificates \
    cmake make automake autoconf \
    pkgconfig gcc g++ git linux-headers \
    curl-dev libevent-dev gettext-dev 