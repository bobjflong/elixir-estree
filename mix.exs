defmodule ESTree.Mixfile do
  use Mix.Project

  def project do
    [app: :estree,
     version: "2.3.0",
     elixir: "~> 1.0",
     deps: deps,
     description: description,
     package: package,
     source_url: "https://github.com/bryanjos/elixir-estree"]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 0.2", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev},
      {:dialyze, "~> 0.2", only: :dev},
      {:shouldi, only: :test}
    ]
  end

  defp description do
    """
    Represents the JavaScript AST from the ESTree spec.
    Includes tools for building an AST and generating code from it.
    """
  end

  defp package do
    [ # These are the default files included in the package
      files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*", "CHANGELOG*"],
      maintainers: ["Bryan Joseph"],
      licenses: ["MIT"],
      links: %{ "GitHub" => "https://github.com/bryanjos/elixir-estree" }
    ]
  end
end
