class CardService
  def initialize(opts)
    @link_base      = opts.delete(:link_path)
    @tag_contraints = opts.delete(:tag_contraints)
  end

  def get_cards
    # get result from discourse api
    hash = SearchQueryBuilder.new.add_tag_constraints(@tag_contraints).query.run

    # create cards
    cards = []
    DiscourseApiParser.new(hash).topics.each do |topic|
      cards << CardBuilder.new(topic, @link_base).card
    end
    cards
  end
end
