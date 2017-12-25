defmodule PolycodeApi.Models.Languages.Synataxes do
  alias PolycodeApi.Services.Languages
  @moduledoc ~S"""
  # Synataxes Model

  Model for Synataxes Resource
  """

  @doc ~S"""
  List all Synataxes recordeds

  ### Example
      iex> import PolycodeApi.Models.Languages.Synataxes
      iex> all()
      2
  """
  def all do
    Languages.fast_find(:all, %{syntaxes: 1, language: 1})
  end

  @doc ~S"""
  Find the synataxes by language name

  ### Example
      iex> import PolycodeApi.Models.Languages.Synataxes
      iex> find("java")
      2
  """
  def find(language) do
    List.first Languages.fast_find(language)
  end
end
