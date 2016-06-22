class LogoutUserQueryBuilder
  def add_user_id(user_id)
    @user_id = user_id
    self
  end

  def query
    raise 'Unable to build a discourse user query without username' if @user_id.blank?
    query_string = "#{DISCOURSE_HOST}/admin/users/#{@user_id}/log_out?api_key=#{DISCOURSE_API_KEY}&api_username=#{DISCOURSE_API_USERNAME}"
    DiscourseQuery.new(query_string, :post)
  end
end
