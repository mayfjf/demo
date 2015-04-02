require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get bestroute" do
    get :bestroute
    assert_response :success
  end

  test "should get biggmap" do
    get :biggmap
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get hazard" do
    get :hazard
    assert_response :success
  end

end
