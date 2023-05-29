defmodule ElixirPhoenixContextBlogPost.BlogTest do
  use ElixirPhoenixContextBlogPost.DataCase

  alias ElixirPhoenixContextBlogPost.Blog

  describe "posts" do
    alias ElixirPhoenixContextBlogPost.Blog.Post

    import ElixirPhoenixContextBlogPost.BlogFixtures

    @invalid_attrs %{content: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert Blog.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Blog.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{content: "some content"}

      assert {:ok, %Post{} = post} = Blog.create_post(valid_attrs)
      assert post.content == "some content"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blog.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{content: "some updated content"}

      assert {:ok, %Post{} = post} = Blog.update_post(post, update_attrs)
      assert post.content == "some updated content"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Blog.update_post(post, @invalid_attrs)
      assert post == Blog.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Blog.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Blog.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Blog.change_post(post)
    end
  end

  describe "comments" do
    alias ElixirPhoenixContextBlogPost.Blog.Comment

    import ElixirPhoenixContextBlogPost.BlogFixtures

    @invalid_attrs %{content: nil}

    test "list_comments/0 returns all comments" do
      comment = comment_fixture()
      assert Blog.list_comments() == [comment]
    end

    test "get_comment!/1 returns the comment with given id" do
      comment = comment_fixture()
      assert Blog.get_comment!(comment.id) == comment
    end

    test "create_comment/1 with valid data creates a comment" do
      valid_attrs = %{content: "some content"}

      assert {:ok, %Comment{} = comment} = Blog.create_comment(valid_attrs)
      assert comment.content == "some content"
    end

    test "create_comment/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blog.create_comment(@invalid_attrs)
    end

    test "update_comment/2 with valid data updates the comment" do
      comment = comment_fixture()
      update_attrs = %{content: "some updated content"}

      assert {:ok, %Comment{} = comment} = Blog.update_comment(comment, update_attrs)
      assert comment.content == "some updated content"
    end

    test "update_comment/2 with invalid data returns error changeset" do
      comment = comment_fixture()
      assert {:error, %Ecto.Changeset{}} = Blog.update_comment(comment, @invalid_attrs)
      assert comment == Blog.get_comment!(comment.id)
    end

    test "delete_comment/1 deletes the comment" do
      comment = comment_fixture()
      assert {:ok, %Comment{}} = Blog.delete_comment(comment)
      assert_raise Ecto.NoResultsError, fn -> Blog.get_comment!(comment.id) end
    end

    test "change_comment/1 returns a comment changeset" do
      comment = comment_fixture()
      assert %Ecto.Changeset{} = Blog.change_comment(comment)
    end
  end

  describe "post_images" do
    alias ElixirPhoenixContextBlogPost.Blog.PostImage

    import ElixirPhoenixContextBlogPost.BlogFixtures

    @invalid_attrs %{url: nil}

    test "list_post_images/0 returns all post_images" do
      post_image = post_image_fixture()
      assert Blog.list_post_images() == [post_image]
    end

    test "get_post_image!/1 returns the post_image with given id" do
      post_image = post_image_fixture()
      assert Blog.get_post_image!(post_image.id) == post_image
    end

    test "create_post_image/1 with valid data creates a post_image" do
      valid_attrs = %{url: "some url"}

      assert {:ok, %PostImage{} = post_image} = Blog.create_post_image(valid_attrs)
      assert post_image.url == "some url"
    end

    test "create_post_image/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blog.create_post_image(@invalid_attrs)
    end

    test "update_post_image/2 with valid data updates the post_image" do
      post_image = post_image_fixture()
      update_attrs = %{url: "some updated url"}

      assert {:ok, %PostImage{} = post_image} = Blog.update_post_image(post_image, update_attrs)
      assert post_image.url == "some updated url"
    end

    test "update_post_image/2 with invalid data returns error changeset" do
      post_image = post_image_fixture()
      assert {:error, %Ecto.Changeset{}} = Blog.update_post_image(post_image, @invalid_attrs)
      assert post_image == Blog.get_post_image!(post_image.id)
    end

    test "delete_post_image/1 deletes the post_image" do
      post_image = post_image_fixture()
      assert {:ok, %PostImage{}} = Blog.delete_post_image(post_image)
      assert_raise Ecto.NoResultsError, fn -> Blog.get_post_image!(post_image.id) end
    end

    test "change_post_image/1 returns a post_image changeset" do
      post_image = post_image_fixture()
      assert %Ecto.Changeset{} = Blog.change_post_image(post_image)
    end
  end
end
