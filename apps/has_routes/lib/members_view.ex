defmodule HasRoutes.MembersView do
  use Phoenix.View, root: ""

  def render("index.json", %{members: members}) do
    Enum.map(members, fn member ->
      %{
        id: member.id,
        name: member.name
      }
    end)
  end
end
