defmodule PolycodeApi.Models.Languages.Algorithms do
  alias PolycodeApi.Services.Languages

  def all do
    Languages.find(%{})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end

  def find(language) do
    List.first Languages.find(%{language: language}, %{algorithms: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end
end
