use Mix.Config

config :polycode_api, PolycodeApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "polycode_repo",
  username: "root",
  password: "root",
  hostname: "mysql"
