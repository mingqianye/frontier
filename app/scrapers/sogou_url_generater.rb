class SogouUrlGenerator
    def self.search_for(gong_zong_hao)
      "#{Settings.sogou_scraper.search_query}" + gong_zong_hao.to_s
    end
end
