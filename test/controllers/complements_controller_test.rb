require "test_helper"

class ComplementsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get complements_show_url
    assert_response :success
  end
end
