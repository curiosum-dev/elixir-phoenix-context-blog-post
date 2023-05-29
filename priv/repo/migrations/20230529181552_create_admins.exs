defmodule ElixirPhoenixContextBlogPost.Repo.Migrations.CreateAdmins do
  use Ecto.Migration

  def change do
    create table(:admins) do
      add :email, :string

      timestamps()
    end
  end
end
