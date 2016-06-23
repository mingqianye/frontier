class TopicListItem
  attr_reader :title, :excerpt, :id
  def initialize(topic_list_item_hash)
    @title = topic_list_item_hash['title']
    @excerpt = topic_list_item_hash['excerpt']
    @id = topic_list_item_hash['id']
  end
end
