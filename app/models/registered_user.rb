class RegisteredUser
  attr_reader :id, :username
  def initialize(opts)
    @id = opts.fetch('id')
    @username = opts.fetch('username')
  end
end
