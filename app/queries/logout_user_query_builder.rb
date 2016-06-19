class LogoutUserQueryBuilder
  API_KEY      = '5aa81dcbdb80a4e868ea473b959d54d7bb678ba83ce5ca7fde172a6a89cb2e6c'
  API_USERNAME = 'mye'

  def initialize
    @host = DISCOURSEHOST
  end

  def add_user_id(user_id)
    @user_id = user_id
    self
  end

  def query
    raise 'Unable to build a discourse user query without username' if @user_id.blank?
    query_string = "#{DISCOURSEHOST}/admin/users/#{@user_id}/log_out?api_key=#{API_KEY}&api_username=#{API_USERNAME}"
    DiscourseQuery.new(query_string, :post)
  end
end
