defmodule Pier.MixProject do
  use Mix.Project

  def project do
    [
      app: :pier,
      version: "0.1.0",
      elixir: "~> 1.15",
      package: package(),
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

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE*"],
      maintainers: ["Pablo Grant"],
      licenses: ["MIT"],
      description: "A wrapper library for the docker api",
      links: %{"GitHub" => "https://github.com/PabloG6/pier"}
    ]

  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:poison, "~> 5.0"},
      {:tesla, "~> 1.10.0"},
      {:hackney, "~> 1.20.1"},
      {:finch, "~> 0.18.0"},
      {:logger_file_backend, "~> 0.0.10"}

    ]
  end
end
