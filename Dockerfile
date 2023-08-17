FROM ruby:3.2.0
# ベースにするイメージを指定

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn
# RailsのインストールやPostgresqlへの接続に必要なパッケージをインストール

RUN mkdir /EC_app
# コンテナ内にmyappディレクトリを作成

WORKDIR /EC_app
# 作成したEC_appディレクトリを作業用ディレクトリとして設定

COPY Gemfile /EC_app/Gemfile
COPY Gemfile.lock /EC_app/Gemfile.lock
# ローカルの Gemfile と Gemfile.lock をコンテナ内のEC_app配下にコピー

RUN bundle install
# コンテナ内にコピーした Gemfile の bundle install

COPY . /EC_app
# ローカルのEC_app配下のファイルをコンテナ内のEC_app配下にコピー
