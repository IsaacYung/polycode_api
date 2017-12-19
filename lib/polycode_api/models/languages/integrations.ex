defmodule PolycodeApi.Models.Languages.Integrations do
  alias PolycodeApi.Services.Languages

  def all do
    Languages.find(%{}, %{integrations: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end

  def find(language) do
    List.first Languages.find(%{language: language}, %{integrations: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end
end
