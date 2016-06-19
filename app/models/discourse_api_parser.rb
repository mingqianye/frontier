class DiscourseApiParser
  def initialize(response_hash)
    @response_hash = response_hash
  end

  def topics
    topic_parsers = []
    @response_hash.fetch('topics', []).each do |t|
      topic_parsers << DiscourseTopicParser.new(t)
    end
    topic_parsers
  end
end
