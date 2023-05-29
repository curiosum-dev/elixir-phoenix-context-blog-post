defmodule ElixirPhoenixContextBlogPost.Account do
  @moduledoc """
  The Account context.
  """

  import Ecto.Query, warn: false
  alias ElixirPhoenixContextBlogPost.Repo

  alias ElixirPhoenixContextBlogPost.Account.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)

  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a user.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{data: %User{}}

  """
  def change_user(%User{} = user, attrs \\ %{}) do
    User.changeset(user, attrs)
  end

  alias ElixirPhoenixContextBlogPost.Account.Admin

  @doc """
  Returns the list of admins.

  ## Examples

      iex> list_admins()
      [%Admin{}, ...]

  """
  def list_admins do
    Repo.all(Admin)
  end

  @doc """
  Gets a single admin.

  Raises `Ecto.NoResultsError` if the Admin does not exist.

  ## Examples

      iex> get_admin!(123)
      %Admin{}

      iex> get_admin!(456)
      ** (Ecto.NoResultsError)

  """
  def get_admin!(id), do: Repo.get!(Admin, id)

  @doc """
  Creates a admin.

  ## Examples

      iex> create_admin(%{field: value})
      {:ok, %Admin{}}

      iex> create_admin(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_admin(attrs \\ %{}) do
    %Admin{}
    |> Admin.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a admin.

  ## Examples

      iex> update_admin(admin, %{field: new_value})
      {:ok, %Admin{}}

      iex> update_admin(admin, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_admin(%Admin{} = admin, attrs) do
    admin
    |> Admin.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a admin.

  ## Examples

      iex> delete_admin(admin)
      {:ok, %Admin{}}

      iex> delete_admin(admin)
      {:error, %Ecto.Changeset{}}

  """
  def delete_admin(%Admin{} = admin) do
    Repo.delete(admin)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking admin changes.

  ## Examples

      iex> change_admin(admin)
      %Ecto.Changeset{data: %Admin{}}

  """
  def change_admin(%Admin{} = admin, attrs \\ %{}) do
    Admin.changeset(admin, attrs)
  end

  alias ElixirPhoenixContextBlogPost.Account.UserToken

  @doc """
  Returns the list of user_tokens.

  ## Examples

      iex> list_user_tokens()
      [%UserToken{}, ...]

  """
  def list_user_tokens do
    Repo.all(UserToken)
  end

  @doc """
  Gets a single user_token.

  Raises `Ecto.NoResultsError` if the User token does not exist.

  ## Examples

      iex> get_user_token!(123)
      %UserToken{}

      iex> get_user_token!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user_token!(id), do: Repo.get!(UserToken, id)

  @doc """
  Creates a user_token.

  ## Examples

      iex> create_user_token(%{field: value})
      {:ok, %UserToken{}}

      iex> create_user_token(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user_token(attrs \\ %{}) do
    %UserToken{}
    |> UserToken.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user_token.

  ## Examples

      iex> update_user_token(user_token, %{field: new_value})
      {:ok, %UserToken{}}

      iex> update_user_token(user_token, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user_token(%UserToken{} = user_token, attrs) do
    user_token
    |> UserToken.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a user_token.

  ## Examples

      iex> delete_user_token(user_token)
      {:ok, %UserToken{}}

      iex> delete_user_token(user_token)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user_token(%UserToken{} = user_token) do
    Repo.delete(user_token)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user_token changes.

  ## Examples

      iex> change_user_token(user_token)
      %Ecto.Changeset{data: %UserToken{}}

  """
  def change_user_token(%UserToken{} = user_token, attrs \\ %{}) do
    UserToken.changeset(user_token, attrs)
  end

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
