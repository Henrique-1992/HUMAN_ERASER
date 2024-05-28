require "test_helper"

class KillersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get killers_index_url
    assert_response :success
  end

  test "should get new" do
    get killers_new_url
    assert_response :success
  end

  test "should get show" do
    get killers_show_url
    assert_response :success
  end

  test "should get create" do
    get killers_create_url
    assert_response :success
  end
end
