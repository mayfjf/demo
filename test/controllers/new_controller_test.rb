require 'test_helper'

class NewControllerTest < ActionController::TestCase
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get viewlist" do
    get :viewlist
    assert_response :success
  end

end
