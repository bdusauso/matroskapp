defmodule Pipole.MixProject do
  use Mix.Project

  def project do
    [
      app: :pipole,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Pipole.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:event_store, in_umbrella: true},
      {:ecto_sql, "~> 3.5"},
      {:postgrex, "~> 0.15"},
      {:jason, "~> 1.2"}
    ]
  end
end
