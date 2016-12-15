defmodule PhoenixApi.Api.MessageController do
  use PhoenixApi.Web, :controller

  def howdy(conn, _params) do
    json(conn, %{ message: HowdyWorld.message })
  end
end
