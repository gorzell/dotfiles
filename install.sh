#!/bin/sh

# Install script for GitHub Codespaces

apt-get update

apt-get install -y --no-install-recommends ca-certificates curl fish git make openssh-client tmux vim

make bootstrap install