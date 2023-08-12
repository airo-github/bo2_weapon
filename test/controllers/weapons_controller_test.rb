require "test_helper"

class WeaponsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weapons_index_url
    assert_response :success
  end
end
