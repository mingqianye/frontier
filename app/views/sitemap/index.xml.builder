xml.instruct! :xml, :version => "1.0"
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.url do
    xml.loc root_url
    xml.lastmod Date.today
    xml.changefreq "hourly"
    xml.priority "1"
  end

  for item in @topic_list.items do
    xml.url do
      xml.loc topic_path(item.id)
      xml.lastmod item.created_at
      xml.changefreq "monthly"
      xml.priority "1"
    end
  end
end
