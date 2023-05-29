defmodule ElixirPhoenixContextBlogPost.Account do
  @moduledoc """
  The Account context.
  """

  alias ElixirPhoenixContextBlogPost.Account.Users
  alias ElixirPhoenixContextBlogPost.Account.Admins
  alias ElixirPhoenixContextBlogPost.Account.UserTokens
  alias ElixirPhoenixContextBlogPost.Account.AdminTokens

  # User related functions
  defdelegate list_users, to: Users
  defdelegate get_user!(id), to: Users
  defdelegate create_user(attrs), to: Users
  defdelegate update_user(user, attrs), to: Users
  defdelegate delete_user(user), to: Users
  defdelegate change_user(user, attrs), to: Users

  # Admin related functions
  defdelegate list_admins, to: Admins
  defdelegate get_admin!(id), to: Admins
  defdelegate create_admin(attrs), to: Admins
  defdelegate update_admin(admin, attrs), to: Admins
  defdelegate delete_admin(admin), to: Admins
  defdelegate change_admin(admin, attrs), to: Admins

  # User Token related functions
  defdelegate list_user_tokens, to: UserTokens
  defdelegate get_user_token!(id), to: UserTokens
  defdelegate create_user_token(attrs), to: UserTokens
  defdelegate update_user_token(user_token, attrs), to: UserTokens
  defdelegate delete_user_token(user_token), to: UserTokens
  defdelegate change_user_token(user_token, attrs), to: UserTokens

  # Admin Token related functions
  defdelegate list_admin_tokens, to: AdminTokens
  defdelegate get_admin_token!(id), to: AdminTokens
  defdelegate create_admin_token(attrs), to: AdminTokens
  defdelegate update_admin_token(admin_token, attrs), to: AdminTokens
  defdelegate delete_admin_token(admin_token), to: AdminTokens
  defdelegate change_admin_token(admin_token, attrs), to: AdminTokens
end
