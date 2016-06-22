class PreviewTopicBuilder
  class << self
    def build_topics_from_topic_list(topic_list_hash)
      topics = topic_list_hash.dig('topic_list', 'topics').select{|x| x.key?('excerpt')}
      topics.map do |t|
        PreviewTopic.new(t)
      end
    end
  end
end
