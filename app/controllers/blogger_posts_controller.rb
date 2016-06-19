class BloggerPostsController < ApplicationController
  def show
    @cards = CardService.new({
      link_path: 'blogger_post_details',
      tag_contraints: params[:tags]
    }).get_cards
  end
end
