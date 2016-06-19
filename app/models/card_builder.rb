class CardBuilder
  def initialize(topic_parser, link_base)
    @topic = topic_parser
    @link_base = link_base
  end

  def card
    c = Card.new
    c.title = title
    c.image_url = image_url
    c.link_url = link_url
    c
  end

  private
  def title
    @topic.title
  end

  def image_url
    @topic.image_url
  end

  def link_url
    if @link_base == 'blogger_post_details'
      "#{DISCOURSEHOST}/t/#{@topic.id}"
    else
      hash = {'tags' => @topic.pointer_tags}
      "/#{@link_base}?#{hash.to_query}"
    end
  end
end
