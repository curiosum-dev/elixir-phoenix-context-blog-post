defmodule ElixirPhoenixContextBlogPost.Blog do
  @moduledoc """
  The Blog context.
  """

  import Ecto.Query, warn: false
  alias ElixirPhoenixContextBlogPost.Repo

  alias ElixirPhoenixContextBlogPost.Blog.Post

  @doc """
  Returns the list of posts.

  ## Examples

      iex> list_posts()
      [%Post{}, ...]

  """
  def list_posts do
    Repo.all(Post)
  end

  @doc """
  Gets a single post.

  Raises `Ecto.NoResultsError` if the Post does not exist.

  ## Examples

      iex> get_post!(123)
      %Post{}

      iex> get_post!(456)
      ** (Ecto.NoResultsError)

  """
  def get_post!(id), do: Repo.get!(Post, id)

  @doc """
  Creates a post.

  ## Examples

      iex> create_post(%{field: value})
      {:ok, %Post{}}

      iex> create_post(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_post(attrs \\ %{}) do
    %Post{}
    |> Post.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a post.

  ## Examples

      iex> update_post(post, %{field: new_value})
      {:ok, %Post{}}

      iex> update_post(post, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_post(%Post{} = post, attrs) do
    post
    |> Post.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a post.

  ## Examples

      iex> delete_post(post)
      {:ok, %Post{}}

      iex> delete_post(post)
      {:error, %Ecto.Changeset{}}

  """
  def delete_post(%Post{} = post) do
    Repo.delete(post)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking post changes.

  ## Examples

      iex> change_post(post)
      %Ecto.Changeset{data: %Post{}}

  """
  def change_post(%Post{} = post, attrs \\ %{}) do
    Post.changeset(post, attrs)
  end

  alias ElixirPhoenixContextBlogPost.Blog.Comment

  @doc """
  Returns the list of comments.

  ## Examples

      iex> list_comments()
      [%Comment{}, ...]

  """
  def list_comments do
    Repo.all(Comment)
  end

  @doc """
  Gets a single comment.

  Raises `Ecto.NoResultsError` if the Comment does not exist.

  ## Examples

      iex> get_comment!(123)
      %Comment{}

      iex> get_comment!(456)
      ** (Ecto.NoResultsError)

  """
  def get_comment!(id), do: Repo.get!(Comment, id)

  @doc """
  Creates a comment.

  ## Examples

      iex> create_comment(%{field: value})
      {:ok, %Comment{}}

      iex> create_comment(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_comment(attrs \\ %{}) do
    %Comment{}
    |> Comment.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a comment.

  ## Examples

      iex> update_comment(comment, %{field: new_value})
      {:ok, %Comment{}}

      iex> update_comment(comment, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_comment(%Comment{} = comment, attrs) do
    comment
    |> Comment.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a comment.

  ## Examples

      iex> delete_comment(comment)
      {:ok, %Comment{}}

      iex> delete_comment(comment)
      {:error, %Ecto.Changeset{}}

  """
  def delete_comment(%Comment{} = comment) do
    Repo.delete(comment)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking comment changes.

  ## Examples

      iex> change_comment(comment)
      %Ecto.Changeset{data: %Comment{}}

  """
  def change_comment(%Comment{} = comment, attrs \\ %{}) do
    Comment.changeset(comment, attrs)
  end

  alias ElixirPhoenixContextBlogPost.Blog.PostImage

  @doc """
  Returns the list of post_images.

  ## Examples

      iex> list_post_images()
      [%PostImage{}, ...]

  """
  def list_post_images do
    Repo.all(PostImage)
  end

  @doc """
  Gets a single post_image.

  Raises `Ecto.NoResultsError` if the Post image does not exist.

  ## Examples

      iex> get_post_image!(123)
      %PostImage{}

      iex> get_post_image!(456)
      ** (Ecto.NoResultsError)

  """
  def get_post_image!(id), do: Repo.get!(PostImage, id)

  @doc """
  Creates a post_image.

  ## Examples

      iex> create_post_image(%{field: value})
      {:ok, %PostImage{}}

      iex> create_post_image(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_post_image(attrs \\ %{}) do
    %PostImage{}
    |> PostImage.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a post_image.

  ## Examples

      iex> update_post_image(post_image, %{field: new_value})
      {:ok, %PostImage{}}

      iex> update_post_image(post_image, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_post_image(%PostImage{} = post_image, attrs) do
    post_image
    |> PostImage.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a post_image.

  ## Examples

      iex> delete_post_image(post_image)
      {:ok, %PostImage{}}

      iex> delete_post_image(post_image)
      {:error, %Ecto.Changeset{}}

  """
  def delete_post_image(%PostImage{} = post_image) do
    Repo.delete(post_image)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking post_image changes.

  ## Examples

      iex> change_post_image(post_image)
      %Ecto.Changeset{data: %PostImage{}}

  """
  def change_post_image(%PostImage{} = post_image, attrs \\ %{}) do
    PostImage.changeset(post_image, attrs)
  end
end
