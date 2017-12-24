defmodule PolycodeApi.Models.Languages.Synataxes do
  alias PolycodeApi.Services.Languages

  def all do
    Languages.find(%{}, %{syntaxes: 1, language: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end

  def find(language) do
    List.first Languages.find(%{language: language}, %{syntaxes: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end
end
