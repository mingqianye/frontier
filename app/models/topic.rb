class Topic
  def initialize(topic_hash)
    @topic_hash = topic_hash
  end

  def first_post_cooked
    posts.first.dig('cooked')
  end

  private
  def posts
    @topic_hash.dig('post_stream', 'posts')
  end
end
