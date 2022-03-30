FROM lscr.io/linuxserver/webtop:alpine-kde

LABEL org.opencontainers.image.description "My custom version of LinuxServers Webtop. Nothing special right now, but it's a work in progress"

# Environment
ENV TZ "Australia/Melbourne"
ENV KEYBOARD "en-us-qwerty"

RUN apk update; apk upgrade; apk add zsh zsh-vcs zsh-zftp zsh-syntax-highlighting zsh-calendar zsh-autosuggestions git git-lfs openssh-client curl wget

EXPOSE 3000
VOLUME /config
