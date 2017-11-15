defmodule PolycodeApi.Models.Languages do
  alias PolycodeApi.Services.Languages

  def all do
    Languages.find(%{})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end

  def find(language) do
    List.first Languages.find(%{languageId: language})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end
end
