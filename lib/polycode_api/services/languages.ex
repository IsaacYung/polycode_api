defmodule PolycodeApi.Services.Languages do
  import Application
  require Mongo

  def find(query, collection \\ Application.get_env(:mongodb, :collection_default)) do
    Mongo.find(
      :mongo,
      collection,
      query,
      limit: get_env(:mongodb, :pool),
      pool: DBConnection.Poolboy
    )
  end
end
