defmodule ElixirPhoenixContextBlogPost.AccountTest do
  use ElixirPhoenixContextBlogPost.DataCase

  alias ElixirPhoenixContextBlogPost.Account

  describe "users" do
    alias ElixirPhoenixContextBlogPost.Account.User

    import ElixirPhoenixContextBlogPost.AccountFixtures

    @invalid_attrs %{email: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Account.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Account.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{email: "some email"}

      assert {:ok, %User{} = user} = Account.create_user(valid_attrs)
      assert user.email == "some email"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Account.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{email: "some updated email"}

      assert {:ok, %User{} = user} = Account.update_user(user, update_attrs)
      assert user.email == "some updated email"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Account.update_user(user, @invalid_attrs)
      assert user == Account.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Account.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Account.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Account.change_user(user)
    end
  end

  describe "admins" do
    alias ElixirPhoenixContextBlogPost.Account.Admin

    import ElixirPhoenixContextBlogPost.AccountFixtures

    @invalid_attrs %{email: nil}

    test "list_admins/0 returns all admins" do
      admin = admin_fixture()
      assert Account.list_admins() == [admin]
    end

    test "get_admin!/1 returns the admin with given id" do
      admin = admin_fixture()
      assert Account.get_admin!(admin.id) == admin
    end

    test "create_admin/1 with valid data creates a admin" do
      valid_attrs = %{email: "some email"}

      assert {:ok, %Admin{} = admin} = Account.create_admin(valid_attrs)
      assert admin.email == "some email"
    end

    test "create_admin/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Account.create_admin(@invalid_attrs)
    end

    test "update_admin/2 with valid data updates the admin" do
      admin = admin_fixture()
      update_attrs = %{email: "some updated email"}

      assert {:ok, %Admin{} = admin} = Account.update_admin(admin, update_attrs)
      assert admin.email == "some updated email"
    end

    test "update_admin/2 with invalid data returns error changeset" do
      admin = admin_fixture()
      assert {:error, %Ecto.Changeset{}} = Account.update_admin(admin, @invalid_attrs)
      assert admin == Account.get_admin!(admin.id)
    end

    test "delete_admin/1 deletes the admin" do
      admin = admin_fixture()
      assert {:ok, %Admin{}} = Account.delete_admin(admin)
      assert_raise Ecto.NoResultsError, fn -> Account.get_admin!(admin.id) end
    end

    test "change_admin/1 returns a admin changeset" do
      admin = admin_fixture()
      assert %Ecto.Changeset{} = Account.change_admin(admin)
    end
  end

  describe "user_tokens" do
    alias ElixirPhoenixContextBlogPost.Account.UserToken

    import ElixirPhoenixContextBlogPost.AccountFixtures

    @invalid_attrs %{token: nil}

    test "list_user_tokens/0 returns all user_tokens" do
      user_token = user_token_fixture()
      assert Account.list_user_tokens() == [user_token]
    end

    test "get_user_token!/1 returns the user_token with given id" do
      user_token = user_token_fixture()
      assert Account.get_user_token!(user_token.id) == user_token
    end

    test "create_user_token/1 with valid data creates a user_token" do
      valid_attrs = %{token: "some token"}

      assert {:ok, %UserToken{} = user_token} = Account.create_user_token(valid_attrs)
      assert user_token.token == "some token"
    end

    test "create_user_token/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Account.create_user_token(@invalid_attrs)
    end

    test "update_user_token/2 with valid data updates the user_token" do
      user_token = user_token_fixture()
      update_attrs = %{token: "some updated token"}

      assert {:ok, %UserToken{} = user_token} = Account.update_user_token(user_token, update_attrs)
      assert user_token.token == "some updated token"
    end

    test "update_user_token/2 with invalid data returns error changeset" do
      user_token = user_token_fixture()
      assert {:error, %Ecto.Changeset{}} = Account.update_user_token(user_token, @invalid_attrs)
      assert user_token == Account.get_user_token!(user_token.id)
    end

    test "delete_user_token/1 deletes the user_token" do
      user_token = user_token_fixture()
      assert {:ok, %UserToken{}} = Account.delete_user_token(user_token)
      assert_raise Ecto.NoResultsError, fn -> Account.get_user_token!(user_token.id) end
    end

    test "change_user_token/1 returns a user_token changeset" do
      user_token = user_token_fixture()
      assert %Ecto.Changeset{} = Account.change_user_token(user_token)
    end
  end

  describe "admin_tokens" do
    alias ElixirPhoenixContextBlogPost.Account.AdminToken

    import ElixirPhoenixContextBlogPost.AccountFixtures

    @invalid_attrs %{token: nil}

    test "list_admin_tokens/0 returns all admin_tokens" do
      admin_token = admin_token_fixture()
      assert Account.list_admin_tokens() == [admin_token]
    end

    test "get_admin_token!/1 returns the admin_token with given id" do
      admin_token = admin_token_fixture()
      assert Account.get_admin_token!(admin_token.id) == admin_token
    end

    test "create_admin_token/1 with valid data creates a admin_token" do
      valid_attrs = %{token: "some token"}

      assert {:ok, %AdminToken{} = admin_token} = Account.create_admin_token(valid_attrs)
      assert admin_token.token == "some token"
    end

    test "create_admin_token/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Account.create_admin_token(@invalid_attrs)
    end

    test "update_admin_token/2 with valid data updates the admin_token" do
      admin_token = admin_token_fixture()
      update_attrs = %{token: "some updated token"}

      assert {:ok, %AdminToken{} = admin_token} = Account.update_admin_token(admin_token, update_attrs)
      assert admin_token.token == "some updated token"
    end

    test "update_admin_token/2 with invalid data returns error changeset" do
      admin_token = admin_token_fixture()
      assert {:error, %Ecto.Changeset{}} = Account.update_admin_token(admin_token, @invalid_attrs)
      assert admin_token == Account.get_admin_token!(admin_token.id)
    end

    test "delete_admin_token/1 deletes the admin_token" do
      admin_token = admin_token_fixture()
      assert {:ok, %AdminToken{}} = Account.delete_admin_token(admin_token)
      assert_raise Ecto.NoResultsError, fn -> Account.get_admin_token!(admin_token.id) end
    end

    test "change_admin_token/1 returns a admin_token changeset" do
      admin_token = admin_token_fixture()
      assert %Ecto.Changeset{} = Account.change_admin_token(admin_token)
    end
  end
end
