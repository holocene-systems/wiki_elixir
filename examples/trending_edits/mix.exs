defmodule TrendingEdits.MixProject do
  use Mix.Project

  def project do
    [
      app: :trending_edits,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {TrendingEditsMain, []},
      extra_applications: [:logger]
      # ??? applications: [:httpotion],
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_ncurses, "~> 0.3.1"},
      {:poison, "~> 4.0"},
      #{:wiki_elixir, "~> 0.1"}
      # To use the local code:
      {:wiki_elixir, path: "../../"}
    ]
  end
end
