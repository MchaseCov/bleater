require "test_helper"

class BleatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bleats_new_url
    assert_response :success
  end

  test "should get create" do
    get bleats_create_url
    assert_response :success
  end

  test "should get index" do
    get bleats_index_url
    assert_response :success
  end
end
