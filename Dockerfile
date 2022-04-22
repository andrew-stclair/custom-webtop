FROM ghcr.io/linuxserver/webtop:alpine-kde

LABEL org.opencontainers.image.description "My custom version of LinuxServers Webtop. Nothing special right now, but it's a work in progress"

# Environment
ENV TZ "Australia/Melbourne"
ENV KEYBOARD "en-us-qwerty"

RUN apk update; apk upgrade; \
    apk add zsh zsh-vcs zsh-zftp zsh-syntax-highlighting zsh-calendar zsh-autosuggestions git git-lfs openssh-client curl wget; \
    mkdir -p "/usr/share/fonts/MesloLGS NF"; \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O "/usr/share/fonts/MesloLGS NF/MesloLGS NF Regular.ttf"; \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O "/usr/share/fonts/MesloLGS NF/MesloLGS NF Bold.ttf"; \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O "/usr/share/fonts/MesloLGS NF/MesloLGS NF Italic.ttf"; \
    wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O "/usr/share/fonts/MesloLGS NF/MesloLGS NF Bold Italic.ttf"; \
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /config/powerlevel10k; \
    sed -i 's/bash/zsh/g' /etc/passwd; \
    apk add tzdata; \
    cp /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone; \
    lookandfeeltool -a org.kde.breezedark.desktop

COPY config/* /config/.

EXPOSE 3000
VOLUME /config
