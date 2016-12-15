defmodule PhoenixApi.Features.HowdyTest do
  use PhoenixApi.ConnCase

  test "GET /", %{conn: conn} do
    response = get(conn, "/api/howdy") |> json_response(200)

    assert response["message"] == "Howdy World"
  end
end
