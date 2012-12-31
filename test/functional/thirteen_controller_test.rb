require 'test_helper'

class ThirteenControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get program" do
    get :program
    assert_response :success
  end

  test "should get housing" do
    get :housing
    assert_response :success
  end

  test "should get transportation" do
    get :transportation
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
