defmodule PolycodeApi.Base do
  use Maru.Router

  plug Plug.Logger
  plug CORSPlug
  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  mount PolycodeApi.API.Languages

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Internal Server Error")
  end
end
