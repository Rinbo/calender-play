require 'test_helper'

class PlanningPeriodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get planning_periods_index_url
    assert_response :success
  end

  test "should get new" do
    get planning_periods_new_url
    assert_response :success
  end

  test "should get create" do
    get planning_periods_create_url
    assert_response :success
  end

end
