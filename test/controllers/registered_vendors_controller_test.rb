require 'test_helper'

class RegisteredVendorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registered_vendors_new_url
    assert_response :success
  end

  test "should get create" do
    get registered_vendors_create_url
    assert_response :success
  end

  test "should get index" do
    get registered_vendors_index_url
    assert_response :success
  end

  test "should get show" do
    get registered_vendors_show_url
    assert_response :success
  end

  test "should get edit" do
    get registered_vendors_edit_url
    assert_response :success
  end

  test "should get update" do
    get registered_vendors_update_url
    assert_response :success
  end

  test "should get destroy" do
    get registered_vendors_destroy_url
    assert_response :success
  end

end
