#!/usr/bin/env bash

set -e

# git clone   ~/ason
echo 'export PATH="$PATH:$HOME/ason/bin"' >> ~/.bash_profile
echo "source ~/.bash_profile" >> ~/.zshrc
chmod +x ~/ason
chmod +x ~/ason/bin/ason


