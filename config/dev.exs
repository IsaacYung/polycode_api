use Mix.Config

# Ecto
config :polycode_api, PolycodeApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "polycode_repo",
  username: "root",
  password: "root",
  hostname: "mysql"

# Mongo
config :mongodb,
  database: "polycode",
  collection_default: "languages",
  hostname: "localhost:27017",
  pool: 20
