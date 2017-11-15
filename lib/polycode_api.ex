defmodule PolycodeApi do
  require Mongo
  use Application

  @moduledoc """
  # The AlienCode Application

  This application is a API for blog backend

  ### Resources
  - Posts
  - Authors
  - Categories
  - Tags
  """

  @doc """
  Start application supervisor

  children:
  AlienCode.Repo like supervisor,
  AlienCode.API.Router like a worker

  the strategy is one for one, for each process down create a new process
  """
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Mongo, [[
        name: :mongo,
        database: Application.get_env(:mongodb, :database),
        pool: DBConnection.Poolboy
      ]])
    ]

    opts = [strategy: :one_for_one, name: PolycodeApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
