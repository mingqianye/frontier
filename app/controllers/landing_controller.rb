class LandingController < ApplicationController
  def index
    @topic_list = TopicListService.get_topics_by_category('5-category/7-category')
  end
end
