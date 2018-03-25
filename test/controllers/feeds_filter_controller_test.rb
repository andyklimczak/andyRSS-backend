require 'test_helper'

class FeedsFilterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get feeds_filter_index_url
    assert_response :success
  end

end
