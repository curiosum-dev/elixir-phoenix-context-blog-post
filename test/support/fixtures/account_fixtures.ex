defmodule ElixirPhoenixContextBlogPost.AccountFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirPhoenixContextBlogPost.Account` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email"
      })
      |> ElixirPhoenixContextBlogPost.Account.create_user()

    user
  end

  @doc """
  Generate a admin.
  """
  def admin_fixture(attrs \\ %{}) do
    {:ok, admin} =
      attrs
      |> Enum.into(%{
        email: "some email"
      })
      |> ElixirPhoenixContextBlogPost.Account.create_admin()

    admin
  end

  @doc """
  Generate a user_token.
  """
  def user_token_fixture(attrs \\ %{}) do
    {:ok, user_token} =
      attrs
      |> Enum.into(%{
        token: "some token"
      })
      |> ElixirPhoenixContextBlogPost.Account.create_user_token()

    user_token
  end

  @doc """
  Generate a admin_token.
  """
  def admin_token_fixture(attrs \\ %{}) do
    {:ok, admin_token} =
      attrs
      |> Enum.into(%{
        token: "some token"
      })
      |> ElixirPhoenixContextBlogPost.Account.create_admin_token()

    admin_token
  end
end
