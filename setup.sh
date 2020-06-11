#!/bin/bash
# A script for setting up dot files, tools, and vital programs

# Copy tools folder to home
cp -r tools ~
echo -e "\nCopied tools folder to home."

# Copy contents of dotfiles directory to home
cp -r dotfiles/* ~
echo -e "\nCopied contents of dotfiles directory to home."

# Copy contents of configfiles directory to .config
if [ -d ~/.config ]; then
  cp -r configfiles/* ~/.config
  echo -e "\nCopied contents of configfiles directory to home."
else
  mkdir ~/.config
  cp -r configfiles/* ~/.config
  echo -e "\nCopied contents of configfiles directory to home."
fi

# Install vital programs
echo ""
sudo apt-get update && sudo apt-get -y install rxvt-unicode screen weechat feh curl pcmanfm curl openvpn tmux

echo -e "\nEverything has been setup! Have fun ;)\n"

