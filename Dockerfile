FROM debian:unstable AS test

WORKDIR /root/.dotfiles
COPY . .

RUN ./install.sh