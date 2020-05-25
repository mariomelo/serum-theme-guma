defmodule Serum.Themes.Guma do
  @behaviour Serum.Theme

  @priv_dir :code.priv_dir(:serum_theme_guma)
  @theme_version Mix.Project.config()[:version]

  def name, do: "Guma"

  def description do
    "Guma is a modern theme that support images"
  end

  def author, do: "Mário Melo | @melomario"
  def legal, do: "MIT License. See LICENSE for the full text."
  def version, do: @theme_version
  def serum, do: "~> 1.0"

  def get_includes do
    @priv_dir
    |> Path.join("includes/*.html.eex")
    |> Path.wildcard()
  end

  def get_templates do
    @priv_dir
    |> Path.join("templates/*.html.eex")
    |> Path.wildcard()
  end

  def get_assets, do: Path.join(@priv_dir, "assets")
end
