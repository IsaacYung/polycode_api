defmodule PolycodeApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :polycode_api,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: Coverex.Task]
    ]
  end

  def application do
    [
      extra_applications: [
        :logger,
        :maru,
        :poison,
        :ecto,
        :poolboy,
        :mongodb
      ],
      mod: {PolycodeApi, []}
    ]
  end

  defp deps do
    [
      {:maru, "~> 0.12.1"},
      {:ecto, "~> 2.1.6"},
      {:mongodb, "~> 0.4.3"},
      {:poolboy, "~> 1.5"},
      {:comeonin, "~> 4.0.0"},
      {:credo, "~> 0.8.4", only: [:dev, :test]},
      {:coverex, "~> 1.4", only: [:test, :dev]},
      {:ex_doc, "~> 0.16.2", only: :dev, runtime: false},
      {:earmark, "~> 1.2.3"}
    ]
  end
end
