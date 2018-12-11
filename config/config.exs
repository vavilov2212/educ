# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :educ,
  ecto_repos: [Educ.Repo]

# Configures the endpoint
config :educ, EducWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bF5CHcmtzIQiqU1J1IaqsgUH8v6V3TgPRIgyP7VO9b0AP1764kfEqnSQO2N4O4lq",
  render_errors: [view: EducWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Educ.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
