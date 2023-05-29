defmodule ElixirPhoenixContextBlogPost.Repo.Migrations.CreateAdminTokens do
  use Ecto.Migration

  def change do
    create table(:admin_tokens) do
      add :token, :string

      timestamps()
    end
  end
end
