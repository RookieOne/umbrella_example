defmodule PhoenixApi.Features.OtherTest do
  use PhoenixApi.ConnCase

  test "GET /", %{conn: conn} do
    response = get(conn, "/other/hello") |> json_response(200)

    assert response["message"] == "Hello from other app"
  end
end
