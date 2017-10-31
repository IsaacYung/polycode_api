defmodule PolycodeApi do
  @moduledoc """
  # The AlienCode Application

  This application is a API for blog backend

  ### Resources
  - Posts
  - Authors
  - Categories
  - Tags
  """

  use Application

  @doc """
  Start application supervisor

  children:
  AlienCode.Repo like supervisor,
  AlienCode.API.Router like a worker

  the strategy is one for one, for each process down create a new process
  """
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children_db = [
      #PolycodeApi.Repo
    ]

    #opts_db = [strategy: :one_for_one, name: PolycodeApi.Database]
    # Supervisor.start_link(children_db, opts_db)
  end
end
