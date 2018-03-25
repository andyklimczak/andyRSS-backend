require 'test_helper'

class ReadFeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get read_feeds_index_url
    assert_response :success
  end

end
