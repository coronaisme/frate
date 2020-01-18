require 'test_helper'

class LoginPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get login_pages_home_url
    assert_response :success
  end

end
