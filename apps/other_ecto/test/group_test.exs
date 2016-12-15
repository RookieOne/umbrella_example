defmodule OtherEcto.MemberTest do
  use OtherEcto.ModelCase
  alias OtherEcto.Group

  test "Adding a group" do
    changeset = %Group{name: "Barry Allen"}
    Repo.insert!(changeset)

    assert (Group |> Repo.all |> length) == 1
  end
end
