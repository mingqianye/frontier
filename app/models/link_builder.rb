class LinkBuilder < ApplicationController
  #include ActionView::Helpers::UrlHelper

  def initialize
  end

  def add_controller(controller)
    @controller = controller
  end

  def add_query_hash(query_hash)
    @query_hash = query_hash
  end

  def get_link
    link_to('Enter', controller: @controller)

  end
end
