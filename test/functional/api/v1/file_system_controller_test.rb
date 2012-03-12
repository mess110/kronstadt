require 'test_helper'

class Api::V1::FileSystemControllerTest < ActionController::TestCase
  test "should get ls" do
    get :ls
    assert_response :success
  end

end
