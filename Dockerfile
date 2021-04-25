FROM bitwalker/alpine-elixir-phoenix:1.11.3

WORKDIR /app

# Cache elixir deps
ADD mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

CMD mix phx.server