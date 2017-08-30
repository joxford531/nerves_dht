defmodule DHT.Mixfile do
  use Mix.Project

  def project do
    [
      app: :nerves_dht,
      version: "1.0.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      compilers: [:elixir_make] ++ Mix.compilers,
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:elixir_make, "~> 0.4", runtime: false},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      source_url: "https://github.com/visciang/nerves_dht",
      extras: ["README.md"],
    ]
  end
end