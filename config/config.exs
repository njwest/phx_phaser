# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phaser,
  ecto_repos: [Phaser.Repo]

# Configures the endpoint
config :phaser, PhaserWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MQsq5nOvrUKicrYD/3iFlNXUsMpcjwN55xmQy99DSif0VYvISgBbf3a/qltp62FP",
  render_errors: [view: PhaserWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Phaser.PubSub,
  live_view: [signing_salt: "OWOCtHdU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
