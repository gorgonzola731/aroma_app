module ApplicationHelper
  require "redcarpet"
  require "coderay"

  class HTMLwithCoderay < Redcarpet::Render::HTML
    def block_code(code, language)
      language = language.split(":")[0] if language.present?
      lang = case language.to_s
             when "rb"
               :ruby
             when "yml"
               :yaml
             when "css"
               :css
             when "html"
               :html
             when ""
               :md
             else
               language
             end
      CodeRay.scan(code, lang).div
    end
  end

  def markdown(text)
    html_render = HTMLwithCoderay.new(
      filter_html: true,
      hard_wrap: true,
      link_attributes: { rel: "nofollow", target: "_blank" }
    )
    options = {
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
    markdown = Redcarpet::Markdown.new(html_render, options)
    markdown.render(text).html_safe
  end

  def translation_class_name(aroma)
    if aroma == "フローラル"
      aroma.gsub(aroma, "floral")
    elsif aroma == "ハーバル"
      aroma.gsub(aroma, "herbal")
    elsif aroma == "ウッディ"
      aroma.gsub(aroma, "woody")
    elsif aroma == "シトラス"
      aroma.gsub(aroma, "citrus")
    elsif aroma == "スパイシー"
      aroma.gsub(aroma, "spicy")
    elsif aroma == "和の香り"
      aroma.gsub(aroma, "japanese")
    elsif aroma == "エキゾチック"
      aroma.gsub(aroma, "exotic")
    elsif aroma == "その他"
      aroma.gsub(aroma, "other")
    end
  end

  def max_width
    if devise_controller?
      "mw-md"
    else
      "mw-xl"
    end
  end
end
