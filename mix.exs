defmodule ExMjml.MixProject do
  use Mix.Project

  @github_url ""

  def project do
    [
      app: :ex_mjml,
      version: "1.0.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      compilers: [:rustler] ++ Mix.compilers(),
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
      {:rustler, "~> 0.21"},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false}
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
