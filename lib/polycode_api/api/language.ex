defmodule PolycodeApi.API.Language do
  use Maru.Router

  get do
    json(conn, %{ hello: :world })
  end
end
