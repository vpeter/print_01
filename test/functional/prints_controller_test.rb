require 'test_helper'

class PrintsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print" do
    assert_difference('Print.count') do
      post :create, :print => { }
    end

    assert_redirected_to print_path(assigns(:print))
  end

  test "should show print" do
    get :show, :id => prints(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => prints(:one).to_param
    assert_response :success
  end

  test "should update print" do
    put :update, :id => prints(:one).to_param, :print => { }
    assert_redirected_to print_path(assigns(:print))
  end

  test "should destroy print" do
    assert_difference('Print.count', -1) do
      delete :destroy, :id => prints(:one).to_param
    end

    assert_redirected_to prints_path
  end
end
