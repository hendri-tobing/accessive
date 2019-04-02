defmodule AccessiveWeb.PageController do
  use AccessiveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
