#!/bin/bash
# Install script for GitHub Codespaces

set -ex

apt="apt-get"

if (( $EUID != 0 )); then
    apt="sudo $apt"
fi

$apt update
$apt install -y --no-install-recommends ca-certificates curl fish git make openssh-client tmux vim

export DOT_DIR=$HOME/dotfiles

make bootstrap install