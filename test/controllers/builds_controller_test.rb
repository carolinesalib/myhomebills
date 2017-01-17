require 'test_helper'

class BuildsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get builds_new_url
    assert_response :success
  end

  test "should get create" do
    get builds_create_url
    assert_response :success
  end

end
