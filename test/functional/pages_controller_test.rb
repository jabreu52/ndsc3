require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get host" do
    get :host
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

end
