defmodule PolycodeApi.Base do
  use Maru.Router

  plug Plug.Logger
  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  mount PolycodeApi.API.Languages

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
