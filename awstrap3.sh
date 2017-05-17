#!/bin/bash
mkdir -p ~/.config/awesome/
touch .config/awesome/autorun.sh
sudo chmod +x .config/awesome/autorun.sh
cd ~/.config/awesome
cat > autorun.sh <<- "EOF"
#!/usr/bin/env bash
function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
EOF
cd ~
sudo pacman -Syu --noconfirm -- needed
pacaur -S --noconfirm --noedit sigil \
  rofi \
  okular \
  pandoc \
  typora \
  trash-cli \
  howdoi \
  glances \
  cylon \
  rmlint \
  i-nex-git
  texlive-localmanager-git \
  texlive-most \
  leafpad \
  youtube-dl i3lock-fancy-git fortune \
  mpv \
  inkscape \
  discord \
  krita \
  qutebrowser \
  opera \
  chromium \
  neovim \
  python2-neovim \
  python-neovim \
  ruby-neovim \
  gnome-tweak-tools
  fontforge \
  variety \
  darktable \
  xfce4-power-manager \
  compton \
  screen \
  awesome-freedesktop-git \
  thunar gvfs file-roller thunar-archive-plugin thunar-shares-plugin thunar-volman ffmpegthumbnailer tumbler raw-thumbnailer gvfs-smb sshfs
curl -sLf https://spacevim.org/install.sh | bash
cd ~/.config/awesome
wget https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Archlinux-icon-crystal-64.svg/2000px-Archlinux-icon-crystal-64.svg.png -O logo-blue.png
wget http://dotshare.it/dots/498/0/raw/ -O rc.lua
wget http://dotshare.it/dots/498/1/raw/ -O theme.lua
git clone https://github.com/bioe007/awesome-revelation.git # See instructions!!!
git clone https://github.com/copycat-killer/awesome-freedesktop.git ~/.config/awesome/freedesktop
cd ~
source ~/.bash_aliases
source ~/.bash_functions
sudo chmod +x rubystrap.sh
./rubystrap.sh


## http://dotshare.it/dots/498/ ##
