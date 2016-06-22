class PreviewTopic
  attr_reader :title, :excerpt
  def initialize(preview_topic_hash)
    @title = preview_topic_hash['title']
    @excerpt = preview_topic_hash['excerpt']
  end
end
