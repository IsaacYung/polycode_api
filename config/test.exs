use Mix.Config

config :polycode_api, PolycodeApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "polycode_repo_test",
  username: "root",
  password: "root",
  hostname: "mysql",
  pool: Ecto.Adapters.SQL.Sandbox
