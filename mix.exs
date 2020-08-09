defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: escript_config(),
      version: "0.1.0",
      name: "Github Issues",
      source_url: "https://github.com/TheWillGabriel/github-issues",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:earmark, "~> 1.4"},
      {:ex_doc, "~> 0.22"},
      {:httpoison, "~> 1.7"},
      {:jason, "~> 1.2"}
    ]
  end
  
  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
