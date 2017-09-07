FROM elixir:1.5.1-slim

RUN mkdir /polycode
WORKDIR /polycode
COPY mix.exs /polycode/mix.exs
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends mysql-client libmysqlclient-dev && \
    mix local.hex --force && \
    mix deps.get && \
    rm -rf /var/lib/apt/lists/*

COPY . /polycode

CMD mix run --no-halt
