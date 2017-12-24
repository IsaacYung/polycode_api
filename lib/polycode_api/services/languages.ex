defmodule PolycodeApi.Services.Languages do
  import Application
  require Mongo

  def find(query, projection \\ %{}, collection \\ Application.get_env(:mongodb, :collection_default)) do
    Mongo.find(
      :mongo,
      collection,
      query,
      limit: get_env(:mongodb, :pool),
      pool: DBConnection.Poolboy,
      projection: projection
    )
  end

  def fast_find(query_key, prefix) do
    case find_from_cache(query_key, prefix) do
      {:ok, result} -> result
      {:missing, projection} -> find(%{language: query_key}, projection)
    end
  end

  defp find_from_cache(query_key, prefix) do
  end
end
