defmodule PolycodeApi.Models.Languages.Characteristics do
  alias PolycodeApi.Services.Languages

  def all do
    Languages.find(%{}, %{characteristics: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end

  def find(language) do
    List.first Languages.find(%{language: language}, %{characteristics: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end
end
