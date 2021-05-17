defmodule ElixirCountriesWarWeb.PageController do
  use ElixirCountriesWarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
