class CreateTopicService
  HOST         = Settings.discourse.host
  API_USERNAME = Settings.sogou_scraper.topic_creater.api_username
  API_KEY      = Settings.sogou_scraper.topic_creater.api_key
  
  def self.exec(title, raw_content, category)
    url = "#{HOST}/posts?api_key=#{API_KEY}&api_username=#{API_USERNAME}"
    data = {
      title:    title,
      raw:      raw_content,
      category: category
    }

    resp = HTTParty.post(url, body: data)
    puts resp.body
  end
end
