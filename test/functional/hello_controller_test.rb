require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get World" do
    get :World
    assert_response :success
  end

end
