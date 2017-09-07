use Mix.Config

config :polycode_api, PolycodeApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "polycode_repo_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
