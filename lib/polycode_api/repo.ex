defmodule PolycodeApi.Repo do
  use Ecto.Repo, otp_app: :polycode_api

  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]},
      type: :worker,
      restart: :permanent,
      shutdown: 500
    }
  end
end
