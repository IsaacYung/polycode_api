defmodule PolycodeApi.API.Language do
  use Maru.Router
  require Logger

  namespace :language do
    namespace ":name" do
      desc "Retrieve a language datas"
      params do
        requires :name, type: String
      end
      get do
        Logger.info "Iniciado"
        json(conn, %{ lang: params[:name] })
      end
    end
  end
end
