class SitemapController < ApplicationController
  def index
    @topic_list = TopicListService.get_topics_by_category('5-category/7-category')
    respond_to do |format|
      format.xml { render :layout => false }
    end
  end
end
