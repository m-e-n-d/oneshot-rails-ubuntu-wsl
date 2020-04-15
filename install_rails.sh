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

# Ruby 2.6.3のインストール
echo "installing Ruby:2.6.3 ......"

rbenv install 2.6.3

rbenv global 2.6.3

# Rails 5.2.1のインストール
echo "isntalling Rails 5.2.1 ......."

gem install rails -v '5.2.1'

echo "DONE."