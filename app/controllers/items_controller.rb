class ItemsController < ApplicationController
  def show
    @cards = CardService.new({
      link_path: 'blogger_posts',
      tag_contraints: params[:tags]
    }).get_cards
  end
end
