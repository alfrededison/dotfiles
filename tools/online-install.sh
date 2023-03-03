#!/bin/sh
#
# This script should be run via curl:
#   sh -c "$(curl -fsSL https://raw.githubusercontent.com/alfrededison/dotfiles/main/tools/online-install.sh)"
# or via wget:
#   sh -c "$(wget -qO- https://raw.githubusercontent.com/alfrededison/dotfiles/main/tools/online-install.sh)"
# or via fetch:
#   sh -c "$(fetch -o - https://raw.githubusercontent.com/alfrededison/dotfiles/main/tools/online-install.sh)"
#

echo '>>>>>>>>>>>>>>> Setting up dotfiles'
git clone https://github.com/alfrededison/dotfiles $HOME/.dotfiles
cd $HOME/.dotfiles
./install.sh
echo '>>>>>>>>>>>>>>> [Done] Setting up dotfiles'
