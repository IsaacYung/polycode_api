defmodule PolycodeApi.Models.Languages.Characteristics do
  alias PolycodeApi.Services.Languages
  @moduledoc ~S"""
  # Characteristics Model

  Model for Characteristics Resource
  """

  @doc ~S"""
  List all characteristics recordeds

  ### Example
      iex> import PolycodeApi.Models.Languages.Characteristics
      iex> all()
      2
  """
  def all do
    Languages.fast_find(:all, %{characteristics: 1, language: 1})
  end

  @doc ~S"""
  Find the characteristics by language name

  ### Example
      iex> import PolycodeApi.Models.Languages.Characteristics
      iex> find("java")
      2
  """
  def find(language) do
    List.first Languages.fast_find(language)
  end
end
