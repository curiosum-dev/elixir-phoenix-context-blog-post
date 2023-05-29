defmodule ElixirPhoenixContextBlogPost.Account.AdminToken do
  use Ecto.Schema
  import Ecto.Changeset

  schema "admin_tokens" do
    field :token, :string

    timestamps()
  end

  @doc false
  def changeset(admin_token, attrs) do
    admin_token
    |> cast(attrs, [:token])
    |> validate_required([:token])
  end
end
