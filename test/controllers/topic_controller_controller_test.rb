require 'test_helper'

class TopicControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get topic_controller_show_url
    assert_response :success
  end

end
