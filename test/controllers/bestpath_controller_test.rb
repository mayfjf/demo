require 'test_helper'

class BestpathControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get assess" do
    get :assess
    assert_response :success
  end

end
