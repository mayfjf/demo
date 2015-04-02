require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get controlpanel" do
    get :controlpanel
    assert_response :success
  end

end
