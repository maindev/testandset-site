FROM alpine:latest AS build

ENV VERSION 0.58.3
RUN apk add --no-cache git openssl py-pygments libc6-compat g++ curl \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/bin/hugo \
    && apk del curl

WORKDIR /build
COPY . /build
RUN hugo

FROM nginx:alpine

COPY nginx.config /etc/nginx/conf.d/default.conf
COPY --from=build /build/public /usr/share/nginx/html/
