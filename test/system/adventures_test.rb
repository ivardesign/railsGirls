require "application_system_test_case"

class AdventuresTest < ApplicationSystemTestCase
  setup do
    @adventure = adventures(:one)
  end

  test "visiting the index" do
    visit adventures_url
    assert_selector "h1", text: "Adventures"
  end

  test "creating a Adventure" do
    visit adventures_url
    click_on "New Adventure"

    fill_in "Name", with: @adventure.name
    click_on "Create Adventure"

    assert_text "Adventure was successfully created"
    click_on "Back"
  end

  test "updating a Adventure" do
    visit adventures_url
    click_on "Edit", match: :first

    fill_in "Name", with: @adventure.name
    click_on "Update Adventure"

    assert_text "Adventure was successfully updated"
    click_on "Back"
  end

  test "destroying a Adventure" do
    visit adventures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adventure was successfully destroyed"
  end
end
