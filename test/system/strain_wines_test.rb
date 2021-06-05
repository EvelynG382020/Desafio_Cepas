require "application_system_test_case"

class StrainWinesTest < ApplicationSystemTestCase
  setup do
    @strain_wine = strain_wines(:one)
  end

  test "visiting the index" do
    visit strain_wines_url
    assert_selector "h1", text: "Strain Wines"
  end

  test "creating a Strain wine" do
    visit strain_wines_url
    click_on "New Strain Wine"

    click_on "Create Strain wine"

    assert_text "Strain wine was successfully created"
    click_on "Back"
  end

  test "updating a Strain wine" do
    visit strain_wines_url
    click_on "Edit", match: :first

    click_on "Update Strain wine"

    assert_text "Strain wine was successfully updated"
    click_on "Back"
  end

  test "destroying a Strain wine" do
    visit strain_wines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Strain wine was successfully destroyed"
  end
end
