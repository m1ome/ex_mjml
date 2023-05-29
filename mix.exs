defmodule ExMjml.MixProject do
  use Mix.Project

  @github_url "https://github.com/m1ome/ex_mjml"

  def project do
    [
      app: :ex_mjml,
      version: "1.3.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers(),
      rustler_crates: [mjml_nif: []],
      name: "ex_mjml",
      description: description(),
      source_url: @github_url,
      homepage_url: @github_url,
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.28.0"},
      {:ex_doc, "~> 0.29", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "NIF bindings for the MJML Rust implementation (mrml)"
  end

  defp package() do
    [
      maintainers: ["Pavel Makarenko"],
      licenses: ["MIT"],
      files: ~w(lib native .formatter.exs README* LICENSE* mix.exs),
      links: %{"GitHub" => @github_url}
    ]
  end

  defp docs() do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end
end
