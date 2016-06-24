class TopicListItemBuilder
  def initialize(topic_list_item_hash)
    @item_hash = topic_list_item_hash
  end

  def build
    item            = TopicListItem.new
    item.title      = title
    item.excerpt    = excerpt
    item.id         = id
    item.created_at = created_at
    item.thumbnail  = thumbnail
    item
  end

  private
  def title
    @item_hash['title']
  end

  def excerpt
    @item_hash['excerpt']
  end

  def id
    @item_hash['id']
  end

  def created_at
    DateTime.parse(@item_hash['created_at'])
  end

  def thumbnail
    relative_path = @item_hash.dig('thumbnails','retina')
    "#{Settings.discourse.host}/#{relative_path}"
  end
end
