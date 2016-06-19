class DiscourseQuery
  def initialize(url, action = :get)
    @url = url
    @action = action
  end
  def run
    Rails.logger.info("Querying restful api with #{@action}: #{@url}")
    response = HTTParty.send(@action, @url)
    JSON.parse(response.body)
  end
end
