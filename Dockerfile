FROM lscr.io/linuxserver/webtop:alpine-kde

LABEL org.opencontainers.image.description "My custom version of LinuxServers Webtop. Nothing special right now, but it's a work in progress"

# Environment
ENV TZ "Australia/Melbourne"
ENV KEYBOARD "en-us-qwerty"

RUN apk update; apk upgrade
