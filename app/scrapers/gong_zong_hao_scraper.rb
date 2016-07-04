require 'sogou_url_generater'
class GongZongHaoScraper
  def initialize(name, category, browser)
    @name = name.to_s
    @category = category
    @browser = browser
  end

  def run
    @browser.goto(search_result_page)
    @browser.h3(text: /#{@name}/).click
    Watir::Wait.until(180) { @browser.windows.last.title == @name }
    @browser.windows.last.use
    home_url = @browser.url
    @browser.h4s(class: 'weui_media_title').each do |article|
      title = article.text
      next if ArticleExistenceCheckService.exist?(title)
      url = article_url(article.attribute_value('hrefs'))

      agent = Mechanize.new
      agent.gzip_enabled = false
      page = agent.get(url)
      ArticlePageScraper.new(page).scrape
    end
  end

  def article_url(relative_path)
    "http://mp.weixin.qq.com#{relative_path}"
  end

  def search_result_page
    SogouUrlGenerator.search_for(@name)
  end
end
