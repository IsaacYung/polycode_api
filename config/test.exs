use Mix.Config

# Ecto
config :polycode_api, PolycodeApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "polycode_repo_test",
  username: "root",
  password: "root",
  hostname: "mysql",
  pool: Ecto.Adapters.SQL.Sandbox

# Mongo
config :mongodb,
  database: "polycode",
  collection_default: "languages",
  username: "",
  password: "",
  hostname: "localhost",
  pool: 20
