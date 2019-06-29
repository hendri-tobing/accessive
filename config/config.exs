# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :accessive,
  ecto_repos: [Accessive.Repo]

# Configures the endpoint
config :accessive, AccessiveWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cVo+8crs0BKvx4LbtLVTroKHlcBeRy/BhkSi2prsg7ys2ocXDImYRzK3L4auPiml",
  render_errors: [view: AccessiveWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Accessive.PubSub, adapter: Phoenix.PubSub.PG2]

# Phauxth authentication configuration
config :phauxth,
  user_context: Accessive.Accounts,
  crypto_module: Argon2,
  token_module: AccessiveWeb.Auth.Token

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
