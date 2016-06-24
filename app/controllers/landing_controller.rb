class LandingController < ApplicationController
  def index
    @topic_list = TopicListService.get_topics_by_category(discourse_category)
  end
end
