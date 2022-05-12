require "application_system_test_case"

class ProprotyAttachementsTest < ApplicationSystemTestCase
  setup do
    @proproty_attachement = proproty_attachements(:one)
  end

  test "visiting the index" do
    visit proproty_attachements_url
    assert_selector "h1", text: "Proproty attachements"
  end

  test "should create proproty attachement" do
    visit proproty_attachements_url
    click_on "New proproty attachement"

    fill_in "Avatar", with: @proproty_attachement.avatar
    fill_in "Proproty", with: @proproty_attachement.proproty_id
    click_on "Create Proproty attachement"

    assert_text "Proproty attachement was successfully created"
    click_on "Back"
  end

  test "should update Proproty attachement" do
    visit proproty_attachement_url(@proproty_attachement)
    click_on "Edit this proproty attachement", match: :first

    fill_in "Avatar", with: @proproty_attachement.avatar
    fill_in "Proproty", with: @proproty_attachement.proproty_id
    click_on "Update Proproty attachement"

    assert_text "Proproty attachement was successfully updated"
    click_on "Back"
  end

  test "should destroy Proproty attachement" do
    visit proproty_attachement_url(@proproty_attachement)
    click_on "Destroy this proproty attachement", match: :first

    assert_text "Proproty attachement was successfully destroyed"
  end
end
