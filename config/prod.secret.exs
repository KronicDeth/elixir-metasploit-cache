use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :metasploit_cache, Metasploit.Cache.Endpoint,
  secret_key_base: "RGh4K/Pkw5sgJarb/6EXh99NuHCMoHBTf9UxtykeM0gNBGNSR9Kr3nHrWdiLnpQ6"

# Configure your database
config :metasploit_cache, Metasploit.Cache.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "metasploit_cache_prod"
