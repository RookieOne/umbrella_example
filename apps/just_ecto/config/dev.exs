use Mix.Config

config :just_ecto, JustEcto.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "just_ecto_repo",
  hostname: "localhost"
