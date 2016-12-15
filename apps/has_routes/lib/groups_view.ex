defmodule HasRoutes.GroupsView do
  use Phoenix.View, root: ""

  def render("index.json", %{groups: groups}) do
    Enum.map(groups, fn group ->
      %{
        id: group.id,
        name: group.name
      }
    end)
  end
end
