class TopicService
  class << self
    def find_topic_by_id(topic_id)
      hash = TopicQueryBuilder.new.add_topic_id(topic_id).query.run
      Topic.new(hash)
    end
  end
end
