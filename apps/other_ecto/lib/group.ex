defmodule OtherEcto.Group do
  use Ecto.Schema

  schema "groups" do
    field :name, :string

    timestamps
  end
end
