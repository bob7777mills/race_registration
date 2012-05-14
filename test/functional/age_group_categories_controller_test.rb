require 'test_helper'

class AgeGroupCategoriesControllerTest < ActionController::TestCase
  setup do
    @age_group_category = age_group_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:age_group_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create age_group_category" do
    assert_difference('AgeGroupCategory.count') do
      post :create, :age_group_category => @age_group_category.attributes
    end

    assert_redirected_to age_group_category_path(assigns(:age_group_category))
  end

  test "should show age_group_category" do
    get :show, :id => @age_group_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @age_group_category
    assert_response :success
  end

  test "should update age_group_category" do
    put :update, :id => @age_group_category, :age_group_category => @age_group_category.attributes
    assert_redirected_to age_group_category_path(assigns(:age_group_category))
  end

  test "should destroy age_group_category" do
    assert_difference('AgeGroupCategory.count', -1) do
      delete :destroy, :id => @age_group_category
    end

    assert_redirected_to age_group_categories_path
  end
end
