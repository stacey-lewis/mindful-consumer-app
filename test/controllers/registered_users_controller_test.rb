require 'test_helper'

class RegisteredUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registered_users_new_url
    assert_response :success
  end

  test "should get create" do
    get registered_users_create_url
    assert_response :success
  end

  test "should get index" do
    get registered_users_index_url
    assert_response :success
  end

  test "should get show" do
    get registered_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get registered_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get registered_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get registered_users_destroy_url
    assert_response :success
  end

end
