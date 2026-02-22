defmodule CeedonBlog.RootLayout do
  use CeedonBlog.Components
  use Tableau.Layout

  def template(assigns) do
    temple do
      "<!DOCTYPE html>"

      html lang: "en" do
        head do
          meta(charset: "UTF-8")
          meta(name: "viewport", content: "width=device-width, initial-scale=1.0")

          title do
            [@page[:title], "ceedon.io"]
            |> Enum.filter(& &1)
            |> Enum.intersperse("|")
            |> Enum.join(" ")
          end

          link(rel: "preconnect", href: "https://fonts.cdnfonts.com", crossorigin: true)

          link(href: "https://fonts.cdnfonts.com/css/rangile", rel: "stylesheet")
          link(href: "https://fonts.cdnfonts.com/css/work-sans", rel: "stylesheet")
          link(href: "https://fonts.cdnfonts.com/css/inconsolata-2", rel: "stylesheet")
          link(rel: "stylesheet", href: "/css/site.css")
          link(rel: "alternate", type: "application/rss+xml", title: "ceedon", href: "/feed.xml")
        end

        body do
          header class: "site-header" do
            hr(class: "rule")

            div class: "site-header__inner" do
              a href: "/", class: "site-logo" do
                "ceedon.io"
              end

              nav do
                ul class: "site-nav" do
                  li do
                    a href: "/" do
                      "writing"
                    end
                  end

                  li do
                    a href: "/about" do
                      "about"
                    end
                  end

                  li do
                    a href: "/feed.xml" do
                      "rss"
                    end
                  end

                  li class: "view-switch" do
                    button onclick: "toggleDark()",
                           id: "theme-toggle",
                           title: "Toggle dark mode" do
                      "☾"
                    end
                  end
                end
              end
            end
          end

          render(@inner_content)

          footer class: "site-footer" do
            hr(class: "rule")

            div class: "site-footer__inner" do
              span do
                "© #{DateTime.utc_now().year} Chris Donnelly"
              end

              span do
                "Built with"

                a href: "https://github.com/elixir-tools/tableau",
                  style: "color: var(--ink-light);" do
                  "Tableau"
                end

                "+"

                a href: "https://elixir-lang.org/", style: "color: var(--ink-light);" do
                  Elixir
                end
              end

              span do
                a href: "https://github.com/ceedon", style: "color: var(--ink-light);" do
                  "github"
                end

                "&nbsp;/&nbsp;"

                a href: "https://linkedin.com/in/ceedon", style: "color: var(--ink-light);" do
                  "linkedin"
                end
              end
            end
          end

          script(src: "/js/theme.js")

          if Mix.env() == :dev do
            c(&Tableau.live_reload/1)
          end
        end
      end
    end
  end
end
