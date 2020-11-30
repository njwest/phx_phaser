defmodule PhaserWeb.PageController do
  use PhaserWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
