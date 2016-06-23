class TopicListItem
  attr_reader :title, :excerpt, :id, :created_at
  def initialize(topic_list_item_hash)
    @title = topic_list_item_hash['title']
    @excerpt = topic_list_item_hash['excerpt']
    @id = topic_list_item_hash['id']
    @created_at = DateTime.parse(topic_list_item_hash['created_at'])
  end
end
