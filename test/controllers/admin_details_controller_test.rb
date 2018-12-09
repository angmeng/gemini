require 'test_helper'

class AdminDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_detail_index_url
    assert_response :success
  end

end
