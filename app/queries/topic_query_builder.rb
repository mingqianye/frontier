class TopicQueryBuilder
  def initialize
    @host = DISCOURSEHOST
  end

  def add_topic_id(id)
    @topic_id = id
    self
  end

  def query
    raise 'Unable to build a discourse topic query without topic_id' if @topic_id.blank?
    query_string = "#{DISCOURSEHOST}/t/#{@topic_id}.json"
    DiscourseQuery.new(query_string)
  end
end
