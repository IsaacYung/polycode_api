defmodule PolycodeApi.Models.Languages.Integrations do
  alias PolycodeApi.Services.Languages
  @moduledoc ~S"""
  # Integrations Model

  Model for Integrations Resource
  """

  @doc ~S"""
  List all integrations recordeds

  ### Example
      iex> import PolycodeApi.Models.Languages.Integrations
      iex> all()
      2
  """
  def all do
    Languages.find(%{}, %{integrations: 1, language: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end

  @doc ~S"""
  Find the integrations by language name

  ### Example
      iex> import PolycodeApi.Models.Languages.Integrations
      iex> find("java")
      2
  """
  def find(language) do
    List.first Languages.find(%{language: language}, %{integrations: 1})
    |> Enum.map &(&1 |> Map.delete("_id"))
  end
end
