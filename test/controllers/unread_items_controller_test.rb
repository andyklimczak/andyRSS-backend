require 'test_helper'

class UnreadItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unread_items_index_url
    assert_response :success
  end

end
