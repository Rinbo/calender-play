require 'test_helper'

class ShiftPattersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shift_patters_index_url
    assert_response :success
  end

  test "should get create" do
    get shift_patters_create_url
    assert_response :success
  end

  test "should get show" do
    get shift_patters_show_url
    assert_response :success
  end

end
