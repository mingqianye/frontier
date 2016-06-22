class TopicListService
  class << self
    def get_topics_by_category(category_string)
      hash = TopicListQueryBuilder.new(category_string).query.run
      PreviewTopicBuilder.build_topics_from_topic_list(hash)
    end
  end
end
