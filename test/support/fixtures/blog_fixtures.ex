defmodule ElixirPhoenixContextBlogPost.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirPhoenixContextBlogPost.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content"
      })
      |> ElixirPhoenixContextBlogPost.Blog.create_post()

    post
  end

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        content: "some content"
      })
      |> ElixirPhoenixContextBlogPost.Blog.create_comment()

    comment
  end

  @doc """
  Generate a post_image.
  """
  def post_image_fixture(attrs \\ %{}) do
    {:ok, post_image} =
      attrs
      |> Enum.into(%{
        url: "some url"
      })
      |> ElixirPhoenixContextBlogPost.Blog.create_post_image()

    post_image
  end
end
