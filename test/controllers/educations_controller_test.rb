require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get educations_new_url
    assert_response :success
  end

  test "should get edit" do
    get educations_edit_url
    assert_response :success
  end

  test "should get show" do
    get educations_show_url
    assert_response :success
  end
end
