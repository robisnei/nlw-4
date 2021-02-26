# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :robspay,
  ecto_repos: [Robspay.Repo]

# Configures the endpoint
config :robspay, RobspayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2yt8bWuNbsQOtPECCwWMLLMhPX/yU6CbgkIr6/YN/3BEIOR3HhdiAEOXdHEISP29",
  render_errors: [view: RobspayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Robspay.PubSub,
  live_view: [signing_salt: "neK4xroy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
