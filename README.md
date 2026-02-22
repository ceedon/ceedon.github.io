# ceedon.dev

Personal blog built with the [Tableau](https://github.com/elixir-tools/tableau) static site generator written in Elixir.

## Setup

```bash
# Install Elixir dependencies
mix deps.get

# Start the dev server (with live reload)
mix server

# Build for production
mix build
```

The site outputs to `_site/`. Static assets in `extra/` are copied in unaltered.

## Writing a post

Add a markdown file to `_posts/` with frontmatter:

```markdown
---
title: "Post Title"
date: 2026-03-01
tags: topic
read_time: "5 min read"
---

Words of wisdom, I guess...
```
