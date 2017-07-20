# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ten_thousand_users,
  ecto_repos: [TenThousandUsers.Repo]

# Configures the endpoint
config :ten_thousand_users, TenThousandUsers.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FtBXkrKocmiq+to5F+CCHqc323RuWaK1NPpL+emEaqnAQqhM/dd061f4VKc6Nyhz",
  render_errors: [view: TenThousandUsers.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TenThousandUsers.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
