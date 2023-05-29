defmodule ElixirPhoenixContextBlogPost.Account.UserToken do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_tokens" do
    field :token, :string

    timestamps()
  end

  @doc false
  def changeset(user_token, attrs) do
    user_token
    |> cast(attrs, [:token])
    |> validate_required([:token])
  end
end
