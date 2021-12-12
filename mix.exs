defmodule Bonfire.Data.AccessControl.MixProject do
  use Mix.Project

  def project do
    [
      app: :bonfire_data_access_control,
      version: "0.1.1",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: "Access Control models for commonspub",
      homepage_url: "https://github.com/bonfire-networks/bonfire_data_access_control",
      source_url: "https://github.com/bonfire-networks/bonfire_data_access_control",
      package: [
        licenses: ["MPL 2.0"],
        links: %{
          "Repository" => "https://github.com/bonfire-networks/bonfire_data_access_control",
          "Hexdocs" => "https://hexdocs.pm/bonfire_data_access_control",
        },
      ],
      docs: [
        main: "readme", # The first page to display from the docs
        extras: ["README.md"], # extra pages to include
      ],
      deps: deps()
    ]
  end

  def application, do: [ extra_applications: [:logger] ]

  defp deps do
    [
      {:pointers, [env: :prod, git: "https://github.com/bonfire-networks/pointers", branch: "main", override: true]}
    ]
  end

end
