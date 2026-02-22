import Config

config :temple,
  engine: EEx.SmartEngine,
  attributes: {Temple, :attributes}

config :tableau, :config,
  url: "https://ceedon.io",
  include_dir: "extra"

config :tableau, Tableau.PostExtension,
  enabled: true,
  dir: "_posts",
  future: false,
  permalink: "/posts/:title",
  layout: CeedonBlog.PostLayout

config :tableau, Tableau.SitemapExtension, enabled: true

config :tableau, Tableau.RSSExtension,
  enabled: true,
  title: "ceedon.io",
  description: "Muttering into the void"

config :tableau, :reloader,
  patterns: [
    ~r"lib/.*.ex",
    ~r"_posts/.*.md",
    ~r"extra/.*.css",
    ~r"extra/.*.js"
  ]

import_config "#{config_env()}.exs"
