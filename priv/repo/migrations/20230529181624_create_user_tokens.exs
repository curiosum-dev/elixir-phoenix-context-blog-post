defmodule ElixirPhoenixContextBlogPost.Repo.Migrations.CreateUserTokens do
  use Ecto.Migration

  def change do
    create table(:user_tokens) do
      add :token, :string

      timestamps()
    end
  end
end
