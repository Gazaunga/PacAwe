#!/bin/bash
sudo pacman -Syu --noconfirm -- needed
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt
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
  youtube-dl \
  mpv \
  inkscape \
  discord \
  krita \
  fira-code-git \
  qutebrowser \
  opera \
  chromium \
  emacs \
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
  thunar gvfs file-roller thunar-archive-plugin thunar-shares-plugin thunar-volman ffmpegthumbnailer tumbler raw-thumbnailer gvfs-smb sshfs
curl -sLf https://spacevim.org/install.sh | bash
cd ~/.config/awesome
wget https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Archlinux-icon-crystal-64.svg/2000px-Archlinux-icon-crystal-64.svg.png -O logo-blue.png
wget http://dotshare.it/dots/498/0/raw/ -O rc.lua
wget http://dotshare.it/dots/498/1/raw/ -O theme.lua
git clone https://github.com/bioe007/awesome-revelation.git
git clone https://github.com/copycat-killer/awesome-freedesktop.git ~/.config/awesome/freedesktop
cd ~
wget http://dotshare.it/dots/498/2/raw/ -O .fehbg
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.Xresources -O .Xresources
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.bash_aliases -O .bash_aliases
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.bash_functions -O .bash_fuctions
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.editorconfig -O .editorconfig
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.lesskey -O .lesskey
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.profile -O .profile
wget https://raw.githubusercontent.com/Gazaunga/Ubi3/master/.screenrc -O .screenrc
touch ~/.xinitrc
echo "sh ~/.fehbg &" ~/.xinitrc
echo "source ~/liquidprompt/liquidprompt" ~/.bashrc
echo "[ -f ~/.bash_aliases ] && source ~/.bash_aliases" ~/.bashrc
echo "[ -f ~/bin/.scripts/utils.sh ] && source ~/bin/.scripts/utils.sh" ~/.bashrc
echo "[ -f ~/.bash_functions ] && source ~/.bash_functions" ~/.bashrc
reboot


## http://dotshare.it/dots/498/ ##
