class LogoutUserQueryBuilder
  def add_user_id(user_id)
    @user_id = user_id
    self
  end

  def query
    raise 'Unable to build a discourse user query without username' if @user_id.blank?
    query_string = "#{Settings.discourse.host}/admin/users/#{@user_id}/log_out?api_key=#{Settings.discourse.api_key}&api_username=#{Settings.discourse.api_username}"
    DiscourseQuery.new(query_string, :post)
  end
end
