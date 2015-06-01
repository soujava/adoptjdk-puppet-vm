#!/bin/bash

sudo apt-get install unzip zip build-essential libX11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev libcups2-dev libfreetype6-dev libasound2-dev ccache --fix-missing --force-yes -y
cd ~/jdk9
sh get_source.sh
bash configure --disable-warnings-as-errors
