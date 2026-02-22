defmodule CeedonBlog.Components do
  use Temple.Component

  defmacro __using__(_) do
    quote do
      import Temple
      import unquote(__MODULE__)
    end
  end

  @doc """
  Prints out the list of a post's tags or "post".
  """
  def post_tags(tags) do
    if tags, do: Enum.join(tags, ", "), else: "post"
  end

  @doc """
  Renders the archive post list with offset numbering relative to the current post.
  Posts newer than current get +01, +02, etc.
  Posts older than current get -01, -02, etc.
  An accent-colored divider appears where the current post would otherwise.
  """
  def post_list(assigns) do
    all_posts = assigns[:posts] || []
    current = assigns[:current] || nil

    current_idx =
      if current do
        Enum.find_index(all_posts, fn p -> p.permalink == current.permalink end) || 0
      else
        -1
      end

    others =
      all_posts
      |> Enum.with_index()
      |> Enum.reject(fn {_p, idx} -> idx == current_idx end)
      |> Enum.map(fn {p, original_idx} ->
        offset = if current_idx == -1, do: original_idx, else: original_idx - current_idx
        sign = if offset < 0, do: "+", else: "-"
        label = "#{sign}#{String.pad_leading(Integer.to_string(abs(offset)), 2, "0")}"
        Map.merge(p, %{offset: offset, offset_label: label})
      end)

    temple do
      for {post, i} <- Enum.with_index(others) do
        if i > 0 and Enum.at(others, i - 1).offset < 0 and post.offset > 0 do
          hr(class: "rule--accent", style: "margin: 0;")
        end

        article class: "post-item", style: "animation-delay: #{(i + 1) * 0.05}s" do
          a href: post.permalink,
            style: "display: contents; text-decoration: none; border: none;" do
            span class: "post-item__index" do
              post.offset_label
            end

            div class: "post-item__body" do
              h2 class: "post-item__title" do
                post.title
              end

              div class: "post-item__date" do
                Calendar.strftime(post.date, "%b %Y")

                span class: "post-item__tag" do
                  post[:tag] || "post"
                end
              end
            end
          end
        end
      end
    end
  end
end
