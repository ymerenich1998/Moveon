require "application_system_test_case"

class VehicleMarksTest < ApplicationSystemTestCase
  setup do
    @vehicle_mark = vehicle_marks(:one)
  end

  test "visiting the index" do
    visit vehicle_marks_url
    assert_selector "h1", text: "Vehicle Marks"
  end

  test "creating a Vehicle mark" do
    visit vehicle_marks_url
    click_on "New Vehicle Mark"

    fill_in "Name", with: @vehicle_mark.name
    click_on "Create Vehicle mark"

    assert_text "Vehicle mark was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle mark" do
    visit vehicle_marks_url
    click_on "Edit", match: :first

    fill_in "Name", with: @vehicle_mark.name
    click_on "Update Vehicle mark"

    assert_text "Vehicle mark was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle mark" do
    visit vehicle_marks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle mark was successfully destroyed"
  end
end
