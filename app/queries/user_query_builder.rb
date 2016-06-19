class UserQueryBuilder
  def initialize
    @host = DISCOURSEHOST
  end

  def add_username(name)
    @username = name
    self
  end

  def query
    raise 'Unable to build a discourse user query without username' if @username.blank?
    query_string = "#{DISCOURSEHOST}/users/#{@username}.json"
    DiscourseQuery.new(query_string)
  end
end
