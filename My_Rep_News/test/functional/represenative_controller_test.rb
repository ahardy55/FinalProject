require 'test_helper'

class RepresenativeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
