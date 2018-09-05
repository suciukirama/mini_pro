require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_create_url
    assert_response :success
  end

  test "should get updatedelete" do
    get user_updatedelete_url
    assert_response :success
  end

  test "should get show" do
    get user_show_url
    assert_response :success
  end

end
