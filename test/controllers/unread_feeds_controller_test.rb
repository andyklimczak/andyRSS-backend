require 'test_helper'

class UnreadFeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unread_feeds_index_url
    assert_response :success
  end

end
