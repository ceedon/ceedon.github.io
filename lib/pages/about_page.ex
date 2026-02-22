defmodule CeedonBlog.AboutPage do
  use Tableau.Page,
    layout: CeedonBlog.RootLayout,
    permalink: "/about"

  use CeedonBlog.Components

  def template(assigns) do
    temple do
      main class: "page-body" do
        div class: "article-col" do
          h1 class: "featured__title" do
            "Hi, I'm Chris."
          end

          div class: "post-body" do
            div do
              "I'm one of your dime-a-dozen, beardy technologists."
              br

              "That said, I've dangled from antennae in Haiti, had 100 gallons of beer fermenting in my kitchen, and eaten fried chicken with Jimmy Carter."

              br

              "This site is an oft-forgotten place for me to share things for my own recollection and others who may find them interesting."
            end

            div do
              h2 do
                "Where to find me"
              end

              "My wife, Mariah, and I are transplants to Grand Rapids, Michigan."
              br
              "We're both originally from Atlanta, Georgia and lived there for 40+ years."
              br
              "We moved for the weather much to the locals' confusion."
            end
          end
        end

        aside class: "archive-col" do
          div class: "archive__label" do
            "Archive"
          end

          c(&CeedonBlog.Components.post_list/1, posts: @posts)
        end
      end
    end
  end
end
