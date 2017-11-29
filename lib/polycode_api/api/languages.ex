defmodule PolycodeApi.API.Languages do
  use Maru.Router
  alias PolycodeApi.Models.Languages
  require Logger

  namespace :languages do
    desc "Retrieve list of the languages"
    get do
      json(conn, Languages.all)
    end

    namespace :syntaxes do
      route_param :language, type: String do
        desc "Retrieve a language datas"
        get do
          json(conn, Languages.find(params[:language]))
        end
      end
    end
  end
end
