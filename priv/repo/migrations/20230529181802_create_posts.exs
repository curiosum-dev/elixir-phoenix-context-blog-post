defmodule ElixirPhoenixContextBlogPost.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :content, :string

      timestamps()
    end
  end
end
