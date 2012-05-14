require 'test_helper'

class AgeGroupDetailsControllerTest < ActionController::TestCase
  setup do
    @age_group_detail = age_group_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:age_group_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create age_group_detail" do
    assert_difference('AgeGroupDetail.count') do
      post :create, :age_group_detail => @age_group_detail.attributes
    end

    assert_redirected_to age_group_detail_path(assigns(:age_group_detail))
  end

  test "should show age_group_detail" do
    get :show, :id => @age_group_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @age_group_detail
    assert_response :success
  end

  test "should update age_group_detail" do
    put :update, :id => @age_group_detail, :age_group_detail => @age_group_detail.attributes
    assert_redirected_to age_group_detail_path(assigns(:age_group_detail))
  end

  test "should destroy age_group_detail" do
    assert_difference('AgeGroupDetail.count', -1) do
      delete :destroy, :id => @age_group_detail
    end

    assert_redirected_to age_group_details_path
  end
end
