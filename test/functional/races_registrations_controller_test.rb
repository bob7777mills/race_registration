require 'test_helper'

class RacesRegistrationsControllerTest < ActionController::TestCase
  setup do
    @races_registration = races_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:races_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create races_registration" do
    assert_difference('RacesRegistration.count') do
      post :create, :races_registration => @races_registration.attributes
    end

    assert_redirected_to races_registration_path(assigns(:races_registration))
  end

  test "should show races_registration" do
    get :show, :id => @races_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @races_registration
    assert_response :success
  end

  test "should update races_registration" do
    put :update, :id => @races_registration, :races_registration => @races_registration.attributes
    assert_redirected_to races_registration_path(assigns(:races_registration))
  end

  test "should destroy races_registration" do
    assert_difference('RacesRegistration.count', -1) do
      delete :destroy, :id => @races_registration
    end

    assert_redirected_to races_registrations_path
  end
end
