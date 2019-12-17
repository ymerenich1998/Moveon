require 'test_helper'

class VehicleMarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_mark = vehicle_marks(:one)
  end

  test "should get index" do
    get vehicle_marks_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_mark_url
    assert_response :success
  end

  test "should create vehicle_mark" do
    assert_difference('VehicleMark.count') do
      post vehicle_marks_url, params: { vehicle_mark: { name: @vehicle_mark.name } }
    end

    assert_redirected_to vehicle_mark_url(VehicleMark.last)
  end

  test "should show vehicle_mark" do
    get vehicle_mark_url(@vehicle_mark)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_mark_url(@vehicle_mark)
    assert_response :success
  end

  test "should update vehicle_mark" do
    patch vehicle_mark_url(@vehicle_mark), params: { vehicle_mark: { name: @vehicle_mark.name } }
    assert_redirected_to vehicle_mark_url(@vehicle_mark)
  end

  test "should destroy vehicle_mark" do
    assert_difference('VehicleMark.count', -1) do
      delete vehicle_mark_url(@vehicle_mark)
    end

    assert_redirected_to vehicle_marks_url
  end
end
