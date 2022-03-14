FROM elixir:1.13.3

RUN apt-get update \
 && apt-get install -y inotify-tools \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENV NODE_VERSION 16.x

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs

RUN npm install npm@latest -g

RUN mix local.hex --force \
 && mix archive.install hex phx_new --force \
 && mix local.rebar --force

WORKDIR /small_world
