defmodule JustEcto.MemberTest do
  use JustEcto.ModelCase
  alias JustEcto.Member

  test "Adding a member" do
    changeset = %Member{name: "Barry Allen"}
    Repo.insert!(changeset)

    assert (Member |> Repo.all |> length) == 1
  end
end
