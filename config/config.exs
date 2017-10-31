use Mix.Config

import_config "#{Mix.env}.exs"

config :polycode_api, ecto_repos: [PolycodeApi.Repo]

config :maru, PolycodeApi.Base,
        http: [port: 4000]
