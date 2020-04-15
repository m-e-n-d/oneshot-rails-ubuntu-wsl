#!/bin/sh

# 初期設定
echo "setup this machine....."

yes | sudo apt-get update
yes | sudo apt-get upgrade

yes | sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev sqlite3 libsqlite3-dev nodejs

# rbenvのインストール
echo "installing rbenv....."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

source ~/.bash_profile

echo "DONE."