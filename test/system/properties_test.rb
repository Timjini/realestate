require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "should create property" do
    visit properties_url
    click_on "New property"

    fill_in "City", with: @property.city
    fill_in "Country", with: @property.country
    fill_in "Latitude", with: @property.latitude
    fill_in "Longitude", with: @property.longitude
    fill_in "Name", with: @property.name
    fill_in "Price", with: @property.price
    fill_in "Street", with: @property.street
    fill_in "User", with: @property.user_id
    fill_in "Zipcode", with: @property.zipcode
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "should update Property" do
    visit property_url(@property)
    click_on "Edit this property", match: :first

    fill_in "City", with: @property.city
    fill_in "Country", with: @property.country
    fill_in "Latitude", with: @property.latitude
    fill_in "Longitude", with: @property.longitude
    fill_in "Name", with: @property.name
    fill_in "Price", with: @property.price
    fill_in "Street", with: @property.street
    fill_in "User", with: @property.user_id
    fill_in "Zipcode", with: @property.zipcode
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "should destroy Property" do
    visit property_url(@property)
    click_on "Destroy this property", match: :first

    assert_text "Property was successfully destroyed"
  end
end
