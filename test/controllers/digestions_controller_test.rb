require "test_helper"

class DigestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get digestions_show_url
    assert_response :success
  end
end
