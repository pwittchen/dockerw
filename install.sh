#!/usr/bin/env bash
set -e
wget -O dockerw.sh https://raw.githubusercontent.com/pwittchen/dockerw/master/dockerw.sh
wget -O .dockerw.config https://raw.githubusercontent.com/pwittchen/dockerw/master/.dockerw.config
chmod +x dockerw.sh
chmod +r .dockerw.config
