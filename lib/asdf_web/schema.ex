defmodule AsdfWeb.Schema do
  use  Absinthe.Schema
  import_types AsdfWeb.Schema.ContentTypes

  # alias AsdfWeb.Resolvers

  query do

    @desc "Get all posts"
    # field :posts, list_of(:post) do
      # resolve &Resolvers.Content.list_posts/3
      field :hello, :string do
        resolve fn _, _ -> {:ok, "world!"} end
    end

  end

end
