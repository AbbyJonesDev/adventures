require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'



module ApplicationHelper

  class HTML < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet # yep, that's it.
    def block_code(code, language)
      Rouge.highlight(code, language || 'text', 'html') 
      # watch out you need to provide 'text' as a default, 
      # because when you not provide language in Markdown 
      # you will get error: <RuntimeError: unknown lexer >
    end
  end


  def markdown(text)
    render_options = {
      # filter_html:     true,
      hard_wrap:       true, 
      link_attributes: { rel: 'nofollow' },
      line_numbers:       true, 
      start_line: 1,
    }
    renderer = HTML.new(render_options)

    extensions = {
      autolink:           true,
      fenced_code_blocks: true,
      lax_spacing:        true,
      no_intra_emphasis:  true,
      strikethrough:      true,
      superscript:        true
    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
