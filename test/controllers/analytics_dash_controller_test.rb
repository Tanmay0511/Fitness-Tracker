require "test_helper"

class AnalyticsDashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get analytics_dash_index_url
    assert_response :success
  end
end
