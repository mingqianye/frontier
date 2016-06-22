class TopicListQueryBuilder
  def initialize(category_string)
    @category_string  = category_string
  end

  def query
    query_string = "#{Settings.discourse.host}/c/#{@category_string}.json"
    DiscourseQuery.new(query_string)
  end
end
