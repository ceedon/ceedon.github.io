defmodule CeedonBlog.MixProject do
  use Mix.Project

  def project do
    [
      app: :ceedon_blog,
      version: "0.1.0",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers(),
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:tableau, "~> 0.26"},
      {:temple, "~>0.14"}
    ]
  end

  defp aliases do
    [
      build: ["tableau.build"],
      server: ["tableau.server"]
    ]
  end
end
