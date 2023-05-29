defmodule ElixirPhoenixContextBlogPost.Blog.PostImages do
  @moduledoc """
  The Blog context.
  """

  import Ecto.Query, warn: false
  alias ElixirPhoenixContextBlogPost.Repo

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
