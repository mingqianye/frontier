class TopicQueryBuilder
  def add_topic_id(id)
    @topic_id = id
    self
  end

  def query
    raise 'Unable to build a discourse topic query without topic_id' if @topic_id.blank?
    query_string = "#{Settings.discourse.host}/t/#{@topic_id}.json"
    DiscourseQuery.new(query_string)
  end
end
