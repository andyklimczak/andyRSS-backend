require 'test_helper'

class ReadItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get read_items_index_url
    assert_response :success
  end

end
