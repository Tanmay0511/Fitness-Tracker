require "test_helper"

class FoodTrackControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_track_index_url
    assert_response :success
  end
end
