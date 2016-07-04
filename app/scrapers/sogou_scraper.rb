class SogouScraper
  def initialize
  end
  
  def run
    browser = BrowserService.new.get
    begin
      Settings.sogou_scraper.gong_zong_hao.each do |k, v|
        GongZongHaoScraper.new(k, v, browser).run
      end
    ensure
      browser.close
    end
  end
end
