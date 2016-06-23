class TopicListItem
  attr_reader :title, :excerpt
  def initialize(topic_list_item_hash)
    @title = topic_list_item_hash['title']
    @excerpt = topic_list_item_hash['excerpt']
  end
end
