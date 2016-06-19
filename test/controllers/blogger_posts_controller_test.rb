require 'test_helper'

class BloggerPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get blogger_posts_show_url
    assert_response :success
  end

end
