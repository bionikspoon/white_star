# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :white_star, ecto_repos: [WhiteStar.Repo]

# Configures the endpoint
config :white_star, WhiteStarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "r24oScrn7oeJtxmXch4UQe/oomHKnh2edRtPhIhSMb0nvTjddQnY5MzOjxp1Q/yZ",
  render_errors: [view: WhiteStarWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: WhiteStar.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :sentry,
  dsn: "https://public:secret@app.getsentry.com/1",
  included_environments: [:prod],
  environment_name: Mix.env()

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
