defmodule PolycodeApi.Models.Languages.Algorithms do
  alias PolycodeApi.Services.Languages
  @moduledoc """
  # Algorithms Model

  Model for Algorithms Resource
  """

  @doc ~S"""
  List all algorithms recordeds

  ### Example
       iex> all
       {
        "ola"
       }
  """
  def all do
    Languages.find(%{}, %{algorithms: 1, language: 1})
    |> Enum.map(&(&1 |> Map.delete("_id")))
  end

  @doc ~S"""
  Find the algorithm by language name

  ### Example
       iex> find("java")
       {
        "ola"
       }
  """
  def find(language) do
    List.first Languages.find(%{language: language}, %{algorithms: 1})
    |> Enum.map(&(&1 |> Map.delete("_id")))
  end
end
