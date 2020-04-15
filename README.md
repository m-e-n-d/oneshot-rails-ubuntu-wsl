# oneshot-rbenv-ubuntu-wsl
WSL上のubuntuでrbenvまでを一発でインストールするスクリプト
rails 5.2.1動作までに基本的に必要なパッケージもすべてインストールする

# 使い方

## rbenvまでインストール
```
$ wget https://raw.githubusercontent.com/m-e-n-d/oneshot-rails-ubuntu-wsl/master/install_rbenv.sh

$ sh install_rails.sh

$ source ~/.bash_profile
```

## ruby 2.6.3のインストール
```
$ rbenv install 2.6.3
```

## Rails 5.2.1のインストール
```
$ gem install rails -v '5.2.1'
```
