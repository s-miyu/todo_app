# ベースイメージとしてRubyを使用
ARG RUBY_VERSION=3.1.4
FROM ruby:$RUBY_VERSION-slim AS base

# 作業ディレクトリ
WORKDIR /app

# 必要なパッケージをインストール
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    curl \
    nodejs \
    npm \
    postgresql-client \
    build-essential \
    libpq-dev \
    git && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Node.jsとnpmのバージョン確認
RUN node -v && npm -v

# Railsの依存関係（Gem）をインストール
COPY Gemfile Gemfile.lock ./
RUN bundle install

# React/TypeScriptの依存関係をインストール
# COPY package.json package-lock.json ./
COPY package.json ./
RUN npm install

# アプリケーションコードをコピー
COPY . .

# 開発サーバーのポートを公開
EXPOSE 3000

# サーバー起動時にデータベースをセットアップし、Railsサーバーを起動
CMD ["bash", "-c", "bundle exec rails db:create db:migrate && bundle exec rails s -b '0.0.0.0'"]

# サーバー起動時にserver.pidを削除
CMD ["sh", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0"]
