defmodule ElixirPhoenixContextBlogPostWeb.PageController do
  use ElixirPhoenixContextBlogPostWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
