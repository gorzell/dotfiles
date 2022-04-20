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
$apt install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    lsb-release \
    gnupg-agent \
    software-properties-common


# Add my Bintray apt repository
curl -fsSL https://apt.cha0s.dev/pub.gpg | (OUT=$($sudo apt-key add - 2>&1) || echo $OUT)
echo "deb https://apt.cha0s.dev stable main" | $sudo tee -a /etc/apt/sources.list.d/chaos-dev.list \

$apt update
$apt install -y --no-install-recommends chaossystems-cli openssh-client

# The repo could be cloned anywhere on the filesystem, so we need to look it up so that we link to the correct location.
export DOT_DIR=$(readlink -f $(dirname "$0"))

make bootstrap install
