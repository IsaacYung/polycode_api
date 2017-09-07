use Mix.Config

config :polycode_api, PolycodeApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "polycode_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
