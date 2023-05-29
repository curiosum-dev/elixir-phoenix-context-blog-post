defmodule ElixirPhoenixContextBlogPost.Blog.PostImage do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post_images" do
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(post_image, attrs) do
    post_image
    |> cast(attrs, [:url])
    |> validate_required([:url])
  end
end
