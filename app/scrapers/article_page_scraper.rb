class ArticlePageScraper
  def initialize(noko)
    @noko = noko
  end

  def scrape
    puts "Scraping #{@noko.uri}"
  end

  def html
    @noko.content
  end
end
