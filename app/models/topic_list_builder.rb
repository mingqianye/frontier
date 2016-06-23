class TopicListBuilder
  class << self
    def build_topic_list(topic_list_hash)
      topics = topic_list_hash.dig('topic_list', 'topics').select{|x| x.key?('excerpt')}
      items = topics.map {|t| build_topic_list_item(t) }
      TopicList.new(items)
    end

    private
    def build_topic_list_item(topic_list_item_hash)
      TopicListItem.new(topic_list_item_hash)
    end
  end
end
