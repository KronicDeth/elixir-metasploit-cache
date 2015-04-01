defmodule Metasploit.Cache.PageController do
  use Metasploit.Cache.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
