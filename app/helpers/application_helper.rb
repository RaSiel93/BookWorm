module ApplicationHelper

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
        autolink: true,
        no_intra_emphasis: true,
        fenced_code_blocks: true,
        lax_html_blocks: true,
        strikethrough: true,
        superscript: true,
        space_after_headers: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

  def category_filter(id)
    #redirects_to Book.where(category_id: id)
    redirect_to @book
  end

  def get_tag_size_render
    40
  end

  def get_tag_count
    Book.tag_counts.size
  end

  def get_tag_size tag
    tag.count
  end

  def get_tag_array
    tag_array = ''
    tag_cloud Book.tag_counts, %w{s m l} do |tag, css_class|
      tag_array << '{text:"'+tag.name+'", weight:'+get_tag_size(tag).to_s+', link:"/tags/'+tag.name+'"},'
    end
    raw('[' + tag_array + ']')
  end

end