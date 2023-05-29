defmodule ElixirPhoenixContextBlogPost.Account.AdminTokens do
  import Ecto.Query, warn: false
  alias ElixirPhoenixContextBlogPost.Repo

  alias ElixirPhoenixContextBlogPost.Account.AdminToken

  @doc """
  Returns the list of admin_tokens.

  ## Examples

      iex> list_admin_tokens()
      [%AdminToken{}, ...]

  """
  def list_admin_tokens do
    Repo.all(AdminToken)
  end

  @doc """
  Gets a single admin_token.

  Raises `Ecto.NoResultsError` if the Admin token does not exist.

  ## Examples

      iex> get_admin_token!(123)
      %AdminToken{}

      iex> get_admin_token!(456)
      ** (Ecto.NoResultsError)

  """
  def get_admin_token!(id), do: Repo.get!(AdminToken, id)

  @doc """
  Creates a admin_token.

  ## Examples

      iex> create_admin_token(%{field: value})
      {:ok, %AdminToken{}}

      iex> create_admin_token(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_admin_token(attrs \\ %{}) do
    %AdminToken{}
    |> AdminToken.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a admin_token.

  ## Examples

      iex> update_admin_token(admin_token, %{field: new_value})
      {:ok, %AdminToken{}}

      iex> update_admin_token(admin_token, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_admin_token(%AdminToken{} = admin_token, attrs) do
    admin_token
    |> AdminToken.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a admin_token.

  ## Examples

      iex> delete_admin_token(admin_token)
      {:ok, %AdminToken{}}

      iex> delete_admin_token(admin_token)
      {:error, %Ecto.Changeset{}}

  """
  def delete_admin_token(%AdminToken{} = admin_token) do
    Repo.delete(admin_token)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking admin_token changes.

  ## Examples

      iex> change_admin_token(admin_token)
      %Ecto.Changeset{data: %AdminToken{}}

  """
  def change_admin_token(%AdminToken{} = admin_token, attrs \\ %{}) do
    AdminToken.changeset(admin_token, attrs)
  end
end
