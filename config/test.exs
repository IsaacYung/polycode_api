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
  username: "polycode_api",
  password: "1YOHlJmFXRrVMJuy",
  hostname: "ds259855.mlab.com:59855",
  pool: 20
