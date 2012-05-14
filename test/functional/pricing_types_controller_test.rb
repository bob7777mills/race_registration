require 'test_helper'

class PricingTypesControllerTest < ActionController::TestCase
  setup do
    @pricing_type = pricing_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pricing_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pricing_type" do
    assert_difference('PricingType.count') do
      post :create, :pricing_type => @pricing_type.attributes
    end

    assert_redirected_to pricing_type_path(assigns(:pricing_type))
  end

  test "should show pricing_type" do
    get :show, :id => @pricing_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pricing_type
    assert_response :success
  end

  test "should update pricing_type" do
    put :update, :id => @pricing_type, :pricing_type => @pricing_type.attributes
    assert_redirected_to pricing_type_path(assigns(:pricing_type))
  end

  test "should destroy pricing_type" do
    assert_difference('PricingType.count', -1) do
      delete :destroy, :id => @pricing_type
    end

    assert_redirected_to pricing_types_path
  end
end
