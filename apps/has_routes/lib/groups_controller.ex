defmodule HasRoutes.GroupsController do
  use Phoenix.Controller

  def index(conn, _params) do
    groups = OtherEcto.Group |> OtherEcto.Repo.all
    render(conn, groups: groups)
  end

  def create(conn, %{"name" => name}) do
    %OtherEcto.Group{name: name} |> OtherEcto.Repo.insert!
    json(conn, %{message: "Group created"})
  end
end
