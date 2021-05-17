# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_countries_war,
  ecto_repos: [ElixirCountriesWar.Repo]

# Configures the endpoint
config :elixir_countries_war, ElixirCountriesWarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+OBzW7ZKhgTqeuCjbcnQ8l5zD+IN4gHJxoLH3OVVpo/08QVmMfi5AMGNcLajpl3X",
  render_errors: [view: ElixirCountriesWarWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirCountriesWar.PubSub,
  live_view: [signing_salt: "wyKFpiuj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
