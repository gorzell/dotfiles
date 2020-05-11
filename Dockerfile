FROM debian:unstable AS test

WORKDIR /root/.dotfiles
COPY . .

RUN mkdir -p ~/.ssh \
    && echo "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config \
    && ./install.sh