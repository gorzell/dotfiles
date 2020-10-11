#!/bin/bash
# Install script for GitHub Codespaces

set -ex

sudo=""
apt="apt-get"

if (( $EUID != 0 )); then
    sudo="sudo"
    apt="$sudo $apt"
fi

$apt update
# Install tools for adding package repositories
$apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    lsb-release \
    gnupg-agent \
    software-properties-common


# Add Docker apt repository
curl -fsSL https://download.docker.com/linux/$(lsb_release -is | tr '[:upper:]' '[:lower:]')/gpg | (OUT=$($sudo apt-key add - 2>&1) || echo $OUT)
$sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(lsb_release -is | tr '[:upper:]' '[:lower:]') $(lsb_release -cs) stable"

# Add my Bintray apt repository
$sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/chaos-systems/deb stable main" | $sudo tee /etc/apt/sources.list.d/chaossystems.list

$apt update
$apt install -y --no-install-recommends chaossystems-cli openssh-client

export DOT_DIR=$HOME/dotfiles

make bootstrap install