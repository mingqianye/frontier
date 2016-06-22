class TopicListQueryBuilder
  def initialize(category_string)
    @category_string  = category_string
  end

  def query
    query_string = "#{DISCOURSE_HOST}/c/#{@category_string}.json"
    DiscourseQuery.new(query_string)
  end
end
