use Mix.Config

config :just_ecto, JustEcto.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("UMBRELLA_DATABASE_URL")
