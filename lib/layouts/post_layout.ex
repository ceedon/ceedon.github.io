defmodule CeedonBlog.PostLayout do
  use CeedonBlog.Components
  use Tableau.Layout, layout: CeedonBlog.RootLayout

  def template(assigns) do
    temple do
      main class: "page-body" do
        div class: "article-col" do
          div do
            div class: "featured__meta" do
              span do
                Calendar.strftime(@page.date, "%b %d, %Y")
              end

              span do
                "·"
              end

              span do
                @page[:read_time] || "5 min read"
              end

              span do
                "·"
              end

              span do
                post_tags(@page[:tags])
              end
            end

            h1 class: "featured__title" do
              @page.title
            end

            hr(class: "rule--accent", style: "max-width: 80px; margin: var(--sp-l) 0 0;")

            div class: "post-body" do
              render(@inner_content)
            end
          end
        end

        aside class: "archive-col" do
          div class: "archive__label" do
            "Archive"
          end

          c(&CeedonBlog.Components.post_list/1, posts: @posts, current: @page)
        end
      end
    end
  end
end
