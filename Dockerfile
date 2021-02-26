FROM elixir:1.11.3-alpine

WORKDIR /app
COPY . /app

RUN apk update && \
    apk add bash && \
    apk add inotify-tools &&\
    mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get && \
    mix compile

CMD ["mix", "phx.server"]
