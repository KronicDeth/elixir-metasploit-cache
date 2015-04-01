defmodule Metasploit.Cache.Endpoint do
  use Phoenix.Endpoint, otp_app: :metasploit_cache

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :metasploit_cache,
    only: ~w(css images js favicon.ico robots.txt)

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_metasploit_cache_key",
    signing_salt: "rGSsqgsz",
    encryption_salt: "LXh8BJlE"

  plug :router, Metasploit.Cache.Router
end
