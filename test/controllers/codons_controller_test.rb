require "test_helper"

class CodonsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get codons_show_url
    assert_response :success
  end
end
