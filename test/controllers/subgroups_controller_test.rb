require 'test_helper'

class SubgroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get subgroups_new_url
    assert_response :success
  end

  test "should get create" do
    get subgroups_create_url
    assert_response :success
  end

end
