defmodule HasRoutes.MessageController do
  use Phoenix.Controller

  def hello(conn, _params) do
    json(conn, %{ message: "Hello from other app" })
  end
end
