defmodule PhoenixApi.Api.MembersView do
  use PhoenixApi.Web, :view

  def render("index.json", %{members: members}) do
    Enum.map(members, fn member ->
      %{
        id: member.id,
        name: member.name
      }
    end)
  end
end
