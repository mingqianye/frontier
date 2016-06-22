class DiscourseTopicParser
  def initialize(topic_hash)
    @topic_hash = topic_hash
  end

  def title
    @topic_hash.fetch('title')
  end

  def image_url
    url = @topic_hash.fetch('image_url')
    return url if url.start_with?('http')
    "#{DISCOURSE_HOST}/#{url}"
  end

  def pointer_tags
    tags = []
    @topic_hash.fetch('excerpt', '').split(',').each do |token|
      tags << token.strip[1 .. -1]
    end
    tags
  end

  def id
    @topic_hash.fetch('id')
  end
end
