class TopicListQueryBuilder
  def initialize(category_string)
    @host = DISCOURSEHOST
    @category_string  = category_string
  end

  def query
    query_string = "#{DISCOURSEHOST}/c/#{@category_string}.json"
    DiscourseQuery.new(query_string)
  end
end
