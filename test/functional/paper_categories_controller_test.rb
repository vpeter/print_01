require 'test_helper'

class PaperCategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paper_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paper_category" do
    assert_difference('PaperCategory.count') do
      post :create, :paper_category => { }
    end

    assert_redirected_to paper_category_path(assigns(:paper_category))
  end

  test "should show paper_category" do
    get :show, :id => paper_categories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => paper_categories(:one).to_param
    assert_response :success
  end

  test "should update paper_category" do
    put :update, :id => paper_categories(:one).to_param, :paper_category => { }
    assert_redirected_to paper_category_path(assigns(:paper_category))
  end

  test "should destroy paper_category" do
    assert_difference('PaperCategory.count', -1) do
      delete :destroy, :id => paper_categories(:one).to_param
    end

    assert_redirected_to paper_categories_path
  end
end
