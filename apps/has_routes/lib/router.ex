defmodule HasRoutes.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HasRoutes do
    pipe_through :api
    get "/hello", MessageController, :hello
    resources "/members", MembersController, only: [:index, :create]
  end
end
