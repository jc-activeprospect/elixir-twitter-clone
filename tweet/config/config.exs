# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tweet,
  ecto_repos: [Tweet.Repo]

# Configures the endpoint
config :tweet, TweetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aIhby2EX2tU0dnTjH26JMzPAWR0l6CjMsgdt1A4oprV8wfVb/8uHsjnR9mdqYt6w",
  render_errors: [view: TweetWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tweet.PubSub,
  live_view: [signing_salt: "w+wG92w7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
