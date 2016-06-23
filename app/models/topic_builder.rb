class TopicBuilder
  def initialize(topic_hash)
    @topic_hash = topic_hash
  end

  def build
    topic = Topic.new
    topic.title = topic_title
    topic.body = topic_body
    topic
  end
  private
  def topic_title
    @topic_hash['title']
  end

  def topic_body
    @topic_hash.dig('post_stream', 'posts').at(0).fetch('cooked')
  end
end
