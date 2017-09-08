defmodule PolycodeApi.API.Language do
  use Maru.Router
  require Logger

  namespace :language do
    namespace ":language" do
      desc "Retrieve a language datas"
      params do
        requires :language, type: String
      end
      get do
        Logger.info "Iniciado"
        json(conn, %{ lang: params[:language] })
      end

      desc "Insert language datas"
      params do
        requires :language, type: String
      end
      post do
        json(conn, %{ lang: params[:language] })
      end

      desc "Insert language datas"
      params do
        requires :language, type: String
      end
      put do
        json(conn, %{ lang: params[:language] })
      end

      desc "Insert language datas"
      params do
        requires :language, type: String
      end
      patch do
        json(conn, %{ lang: params[:language] })
      end
    end
  end
end
