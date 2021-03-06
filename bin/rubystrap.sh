#!/bin/bash
cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
source /etc/profile
rbenv install 2.4.1
rbenv rehash
rbenv global 2.4.1
touch ~/.gemrc
gem install bundler
gem install jekyll
gem install rake
gem install rails
gem install sinatra
gem install thin
gem install asciidoctor
gem install ruby-doc
gem install rpg-maker-rgss3
gem install gepub
gem install sass
gem update
git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true
sudo gem install --no-user-instal rails rake jekyll bundler
bundle install --path vendor/bundle 
sudo gem rdoc --all --ri --no-rdoc
sudo chmod +x ~/bin/fontstrap.sh
./fontstrap.sh

