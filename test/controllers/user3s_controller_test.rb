require 'test_helper'

class User3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user3 = user3s(:one)
  end

  test "should get index" do
    get user3s_url
    assert_response :success
  end

  test "should get new" do
    get new_user3_url
    assert_response :success
  end

  test "should create user3" do
    assert_difference('User3.count') do
      post user3s_url, params: { user3: { email: @user3.email, id: @user3.id, name: @user3.name } }
    end

    assert_redirected_to user3_url(User3.last)
  end

  test "should show user3" do
    get user3_url(@user3)
    assert_response :success
  end

  test "should get edit" do
    get edit_user3_url(@user3)
    assert_response :success
  end

  test "should update user3" do
    patch user3_url(@user3), params: { user3: { email: @user3.email, id: @user3.id, name: @user3.name } }
    assert_redirected_to user3_url(@user3)
  end

  test "should destroy user3" do
    assert_difference('User3.count', -1) do
      delete user3_url(@user3)
    end

    assert_redirected_to user3s_url
  end
end
