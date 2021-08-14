require 'test_helper'

class CoworkingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coworkings_index_url
    assert_response :success
  end

  test "should get show" do
    get coworkings_show_url
    assert_response :success
  end

end
