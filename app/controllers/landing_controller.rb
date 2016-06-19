class LandingController < ApplicationController
  def index
    @cards = CardService.new({
      link_path: 'categories',
      tag_contraints: ['official-logo']
    }).get_cards
  end
end
