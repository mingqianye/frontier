require 'rails_helper'
describe ArticlePageScraper do
  let (:noko) { Nokogiri::HTML(File.open('spec/data/page.html')) }

  
  it 'should get html' do
    puts ArticlePageScraper.new(noko).html
  end

end
