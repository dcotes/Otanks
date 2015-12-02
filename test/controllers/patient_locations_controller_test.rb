require 'test_helper'

class PatientLocationsControllerTest < ActionController::TestCase
  setup do
    @patient_location = patient_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_location" do
    assert_difference('PatientLocation.count') do
      post :create, patient_location: { address: @patient_location.address, latitude: @patient_location.latitude, longitude: @patient_location.longitude }
    end

    assert_redirected_to patient_location_path(assigns(:patient_location))
  end

  test "should show patient_location" do
    get :show, id: @patient_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_location
    assert_response :success
  end

  test "should update patient_location" do
    patch :update, id: @patient_location, patient_location: { address: @patient_location.address, latitude: @patient_location.latitude, longitude: @patient_location.longitude }
    assert_redirected_to patient_location_path(assigns(:patient_location))
  end

  test "should destroy patient_location" do
    assert_difference('PatientLocation.count', -1) do
      delete :destroy, id: @patient_location
    end

    assert_redirected_to patient_locations_path
  end
end
