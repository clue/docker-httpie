FROM alpine:edge

MAINTAINER Christian Lück <christian@lueck.tv>

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --no-cache httpie@testing ca-certificates

ENTRYPOINT ["http"]
