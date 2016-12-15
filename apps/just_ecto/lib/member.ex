defmodule JustEcto.Member do
  use Ecto.Schema

  schema "members" do
    field :name, :string

    timestamps
  end
end
