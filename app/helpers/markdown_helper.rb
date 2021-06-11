module MarkdownHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(html_renderer, markdown_extensions)
    markdown.render(text).html_safe
  end

  private

  def html_renderer
    Redcarpet::Render::HTML
  end

  def markdown_extensions
    # 設定の詳細は https://github.com/vmg/redcarpet#and-its-like-really-simple-to-use
    {
      autolink: true,
      space_after_headers: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      tables: true,
      hard_wrap: true,
      xhtml: true,
      lax_html_blocks: true,
      strikethrough: true
    }
  end

  def html_renderer
    # ***** 以下を変更 *****
    ::Coderayify.new(
      filter_html: false,
      hard_wrap: true,
      link_attributes: { rel: "nofollow", target: "_blank" }
    )
  end
end
