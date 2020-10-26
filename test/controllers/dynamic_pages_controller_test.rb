require 'test_helper'

class DynamicPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get dynamic_pages_users_url
    assert_response :success
  end

end
