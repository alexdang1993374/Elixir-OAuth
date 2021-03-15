# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :oauth,
  ecto_repos: [Oauth.Repo]

# Configures the endpoint
config :oauth, OauthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XY4xw5uO+G4PwL+W9CCCJUBqm1U3w/rSnRaj1Y8RESnjlqp4l9vlCTYdOZkc0asR",
  render_errors: [view: OauthWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Oauth.PubSub,
  live_view: [signing_salt: "2ZCa/AXF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ueberauth, Ueberauth,
  providers: [
    google: {Ueberauth.Strategy.Google, []}
  ]

config :ueberauth, Ueberauth.Strategy.Google.OAuth,
  # made up code
  client_id: "423035200179-o2dfu7herhjhs00tv4catmcnlsmv602i.apps.googleusercontent.com",
  # made up code
  client_secret: "twHyuou0eCvRk1w05aovOjG9"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
