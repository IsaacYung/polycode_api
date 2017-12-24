defmodule PolycodeApi.API.Languages do
  use Maru.Router
  alias PolycodeApi.Models.Languages
  alias Languages.Synataxes
  alias Languages.Characteristics
  alias Languages.Integrations
  alias Languages.Algorithms
  require Logger

  namespace :languages do
    desc "Retrieve list of the languages"
    get do json(conn, Languages.all) end

    route_param :language, type: String do
      desc "Retrieve a language datas"
      params do
        requires :language, type: String
      end
      get do
        IO.inspect Languages.find(params[:language])
        json(conn, Languages.find(params[:language]))
      end
    end

    namespace :syntaxes do
      desc "Retrieve list of the languages"
      get :all do json(conn, Synataxes.all) end

      route_param :language, type: String do
        desc "Retrieve a language datas"
        get do
          json(conn, Synataxes.find(params[:language]))
        end
      end
    end

    namespace :characteristics do
      desc "Retrieve list of the languages"
      get :all do json(conn, Characteristics.all) end

      route_param :language, type: String do
        desc "Retrieve a language datas"
        get do
          json(conn, Characteristics.find(params[:language]))
        end
      end
    end

    namespace :algorithms do
      desc "Retrieve list of the languages"
      get :all do json(conn, Algorithms.all) end

      route_param :language, type: String do
        desc "Retrieve a language datas"
        get do
          json(conn, Algorithms.find(params[:language]))
        end
      end
    end

    namespace :integrations do
      desc "Retrieve list of the languages"
      get :all do json(conn, Integrations.all) end

      route_param :language, type: String do
        desc "Retrieve a language datas"
        get do
          json(conn, Integrations.find(params[:language]))
        end
      end
    end
  end
end
