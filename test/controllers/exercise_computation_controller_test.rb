require "test_helper"

class ExerciseComputationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exercise_computation_index_url
    assert_response :success
  end
end
