defmodule CeedonBlog.IndexPage do
  use Tableau.Page,
    layout: CeedonBlog.RootLayout,
    permalink: "/"

  use CeedonBlog.Components

  def template(assigns) do
    latest = List.first(assigns[:posts] || [])

    temple do
      main class: "page-body" do
        div class: "article-col" do
          if latest do
            div do
              div class: "featured__meta" do
                span do
                  Calendar.strftime(latest.date, "%b %d, %Y")
                end

                span do
                  "·"
                end

                span do
                  latest[:read_time] || "5 min read"
                end

                span do
                  "·"
                end

                span do
                  post_tags(latest[:tags])
                end
              end

              h1 class: "featured__title" do
                latest.title
              end

              hr(class: "rule--accent", style: "max-width: 80px; margin: var(--sp-l) 0 0;")

              div class: "post-body" do
                latest.renderer.(assigns)
              end
            end
          end
        end

        aside class: "archive-col" do
          div class: "archive__label" do
            "Archive"
          end

          c(&CeedonBlog.Components.post_list/1, posts: @posts, current: latest)
        end
      end
    end
  end
end
