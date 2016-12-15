use Mix.Config

config :other_ecto, OtherEcto.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "other_ecto_repo",
  hostname: "localhost"
