require "test_helper"

class AboutMeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get about_me_index_url
    assert_response :success
  end

  test "should get edit" do
    get about_me_edit_url
    assert_response :success
  end

  test "should get update" do
    get about_me_update_url
    assert_response :success
  end
end
