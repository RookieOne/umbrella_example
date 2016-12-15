defmodule HasRoutes.MembersController do
  use Phoenix.Controller

  def index(conn, _params) do
    members = JustEcto.Member |> JustEcto.Repo.all
    render(conn, members: members)
  end

  def create(conn, %{"name" => name}) do
    %JustEcto.Member{name: name} |> JustEcto.Repo.insert!
    json(conn, %{message: "Member created"})
  end
end
