defmodule AsdfWeb.Router do
  use AsdfWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql",
      Absinthe.Plug.GraphiQL,
      schema: AsdfWeb.Schema,
      json_codec: Jason
  end
end
