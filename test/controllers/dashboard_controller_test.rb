require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get flats" do
    get dashboard_flats_url
    assert_response :success
  end

end
