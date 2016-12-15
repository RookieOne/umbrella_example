defmodule PhoenixApi.Router do
  use PhoenixApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", PhoenixApi.Api do
    pipe_through :api
    get "/howdy", MessageController, :howdy
  end

  forward "/other", HasRoutes.Router

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixApi do
  #   pipe_through :api
  # end
end
