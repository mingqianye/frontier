class UserService
  class << self
    def find_user_by_name(name)
      return UnregisteredUser.new if name.blank?
      hash = UserQueryBuilder.new.add_username(name).query.run
      RegisteredUser.new(hash.fetch('user'))
    end

    def log_out_user_by_id(id)
      LogoutUserQueryBuilder.new.add_user_id(id).query.run
    end
  end
end
