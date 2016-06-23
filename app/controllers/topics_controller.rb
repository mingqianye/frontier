class TopicsController < ApplicationController
  def show
    @topic = TopicService.find_topic_by_id(topic_id)
  end
  
  private
  def topic_id
    params.permit(:id).require(:id)
  end
end
