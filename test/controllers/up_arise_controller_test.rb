require 'test_helper'

class UpAriseControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Members" do
    get :Members
    assert_response :success
  end

  test "should get Events" do
    get :Events
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

end
