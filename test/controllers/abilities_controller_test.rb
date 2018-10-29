require 'test_helper'

class AbilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get abilities_index_url
    assert_response :success
  end

  test "should get show" do
    get abilities_show_url
    assert_response :success
  end

  test "should get edit" do
    get abilities_edit_url
    assert_response :success
  end

  test "should get delete" do
    get abilities_delete_url
    assert_response :success
  end

  test "should get create" do
    get abilities_create_url
    assert_response :success
  end

  test "should get update" do
    get abilities_update_url
    assert_response :success
  end

end
