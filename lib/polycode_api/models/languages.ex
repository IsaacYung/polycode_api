defmodule PolycodeApi.Models.Languages do
  alias PolycodeApi.Services.Languages

  def all do
    Languages.find(%{})
  end

  def find(language) do
    List.first Languages.fast_find(language)
  end
end
