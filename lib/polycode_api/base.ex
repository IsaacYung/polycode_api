defmodule PolycodeApi.Base do
  use Maru.Router

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  mount PolycodeApi.API.Language

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end