require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, params: { current_user: User.first }
    assert_response :success
    assert_includes @response.body, 'header'
  end
end
