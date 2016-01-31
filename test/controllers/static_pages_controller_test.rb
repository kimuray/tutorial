require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home|" + setup()
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help|" + setup()
  end

  test "Should get about" do
    get :about
    assert_response :success
    assert_select "title", "About|" + setup()
  end

  test "Should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact|" + setup()
  end

  def setup
  	msg = "Ruby on Rails Tutorial Sample App"
  end

  test "Should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact|Ruby on Rails Tutorial Sample App"
  end
end
