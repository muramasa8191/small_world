defmodule SmallWorldWeb.PageController do
  use SmallWorldWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
