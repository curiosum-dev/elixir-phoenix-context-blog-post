defmodule ElixirPhoenixContextBlogPost.Blog do
  @moduledoc """
  The Blog context.
  """

  alias ElixirPhoenixContextBlogPost.Blog.Posts
  alias ElixirPhoenixContextBlogPost.Blog.Comments
  alias ElixirPhoenixContextBlogPost.Blog.PostImages

  # Post related functions
  defdelegate list_posts, to: Posts
  defdelegate get_post!(id), to: Posts
  defdelegate create_post(attrs), to: Posts
  defdelegate update_post(post, attrs), to: Posts
  defdelegate delete_post(post), to: Posts
  defdelegate change_post(post, attrs), to: Posts

  # Comment related functions
  defdelegate list_comments, to: Comments
  defdelegate get_comment!(id), to: Comments
  defdelegate create_comment(attrs), to: Comments
  defdelegate update_comment(comment, attrs), to: Comments
  defdelegate delete_comment(comment), to: Comments
  defdelegate change_comment(comment, attrs), to: Comments

  # Post image related functions
  defdelegate list_post_images, to: PostImages
  defdelegate get_post_image!(id), to: PostImages
  defdelegate create_post_image(attrs), to: PostImages
  defdelegate update_post_image(post_image, attrs), to: PostImages
  defdelegate delete_post_image(post_image), to: PostImages
  defdelegate change_post_image(post_image, attrs), to: PostImages
end
