class CategoriesController < ApplicationController
  def show
    @cards = CardService.new({
      link_path: 'items',
      tag_contraints: params[:tags]
    }).get_cards
  end
end
