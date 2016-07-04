class PageContentExtractor
  NBSP = Nokogiri::HTML("&nbsp\;").text

  def initialize(html_string)
    @noko = Nokogiri::HTML(html_string)
  end

  def title
    @noko.css('h2#activity-name').text.gsub(NBSP, ' ').strip
  end

  def raw_content
    content = @noko.css('div#js_content')
    content.css('img').each do |img_tag|
      src = img_tag.attribute('data-src').value
      img_tag['src'] = img_tag.attribute('data-src').value
    end
    content.to_s
  end
end
