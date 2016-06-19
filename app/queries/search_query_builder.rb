class SearchQueryBuilder
  def initialize
    @host = DISCOURSEHOST
    @constraints = []
  end

  def add_tag_constraints(tags)
    tags.each do |tag|
      @constraints << "tag:#{tag}"
    end
    self
  end

  def query
    raise 'Unable to build a discourse search query without any constraints' if @constraints.blank?
    query_string = "#{DISCOURSEHOST}/search.json?q=#{@constraints.join(' ')}"
    DiscourseQuery.new(query_string)
  end
end
