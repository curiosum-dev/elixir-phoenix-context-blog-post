defmodule ElixirPhoenixContextBlogPost.Repo do
  use Ecto.Repo,
    otp_app: :elixir_phoenix_context_blog_post,
    adapter: Ecto.Adapters.Postgres
end
