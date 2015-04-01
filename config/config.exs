# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the namespace used by Phoenix generators
config :metasploit_cache,
  app_namespace: Metasploit.Cache

# Configures the endpoint
config :metasploit_cache, Metasploit.Cache.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zWPl7cvMo+6QeDvRpfu53kWhUj6vCWMseArsIiF7b+nrLGveBCyZd5AOZlxsEeD9",
  debug_errors: false,
  pubsub: [name: Metasploit.Cache.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
