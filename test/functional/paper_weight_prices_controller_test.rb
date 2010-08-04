require 'test_helper'

class PaperWeightPricesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paper_weight_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paper_weight_price" do
    assert_difference('PaperWeightPrice.count') do
      post :create, :paper_weight_price => { }
    end

    assert_redirected_to paper_weight_price_path(assigns(:paper_weight_price))
  end

  test "should show paper_weight_price" do
    get :show, :id => paper_weight_prices(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => paper_weight_prices(:one).to_param
    assert_response :success
  end

  test "should update paper_weight_price" do
    put :update, :id => paper_weight_prices(:one).to_param, :paper_weight_price => { }
    assert_redirected_to paper_weight_price_path(assigns(:paper_weight_price))
  end

  test "should destroy paper_weight_price" do
    assert_difference('PaperWeightPrice.count', -1) do
      delete :destroy, :id => paper_weight_prices(:one).to_param
    end

    assert_redirected_to paper_weight_prices_path
  end
end
