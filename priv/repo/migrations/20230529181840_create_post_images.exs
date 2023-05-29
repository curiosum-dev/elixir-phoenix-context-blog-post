defmodule ElixirPhoenixContextBlogPost.Repo.Migrations.CreatePostImages do
  use Ecto.Migration

  def change do
    create table(:post_images) do
      add :url, :string

      timestamps()
    end
  end
end
