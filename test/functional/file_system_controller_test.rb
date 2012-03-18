require 'test_helper'

class FileSystemControllerTest < ActionController::TestCase
  test "should get ls" do
    get :ls
    assert_response :success
  end

end
