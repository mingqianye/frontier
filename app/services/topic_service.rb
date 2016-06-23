class TopicService
  class << self
    def find_topic_by_id(topic_id)
      hash = TopicQueryBuilder.new.add_topic_id(topic_id).query.run
      TopicBuilder.new(hash).build
    end
  end
end
