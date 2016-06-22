class LandingController < ApplicationController
  def index
    @preview_topics = TopicListService.get_topics_by_category('5-category/7-category')
  end
end
