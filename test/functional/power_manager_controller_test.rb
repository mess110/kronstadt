require 'test_helper'

class PowerManagerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get shutdown" do
    get :shutdown
    assert_response :success
  end

  test "should get reboot" do
    get :reboot
    assert_response :success
  end

end
