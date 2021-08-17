FROM makeorg/docker-arch-docker:latest

MAINTAINER technique@make.org

RUN \
  touch /root/.profile && touch /root/.bashrc && \
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.38.0/install.sh | bash && \
  . /root/.profile && source /root/.bashrc && nvm install node && nvm alias default node && \
   pacman -Sy --noconfirm  && pacman -S archlinux-keyring --noconfirm && pacman -S yarn --noconfirm
ENV LANG=en_US.UTF-8
CMD ["/usr/bin/bash"]

