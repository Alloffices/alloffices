require 'test_helper'

class SignUpsControllerTest < ActionController::TestCase
  setup do
    @sign_up = sign_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_up" do
    assert_difference('SignUp.count') do
      post :create, sign_up: { email: @sign_up.email, name: @sign_up.name }
    end

    assert_redirected_to sign_up_path(assigns(:sign_up))
  end

  test "should show sign_up" do
    get :show, id: @sign_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sign_up
    assert_response :success
  end

  test "should update sign_up" do
    patch :update, id: @sign_up, sign_up: { email: @sign_up.email, name: @sign_up.name }
    assert_redirected_to sign_up_path(assigns(:sign_up))
  end

  test "should destroy sign_up" do
    assert_difference('SignUp.count', -1) do
      delete :destroy, id: @sign_up
    end

    assert_redirected_to sign_ups_path
  end
end
