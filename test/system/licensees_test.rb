require "application_system_test_case"

class LicenseesTest < ApplicationSystemTestCase
  setup do
    @licensee = licensees(:one)
  end

  test "visiting the index" do
    visit licensees_url
    assert_selector "h1", text: "Licensees"
  end

  test "creating a Licensee" do
    visit licensees_url
    click_on "New Licensee"

    fill_in "Address", with: @licensee.address
    fill_in "Branch", with: @licensee.branch_id
    fill_in "Contact", with: @licensee.contact
    fill_in "Email", with: @licensee.email
    fill_in "Experiences", with: @licensee.experiences
    fill_in "Gender", with: @licensee.gender
    fill_in "Ic", with: @licensee.ic
    fill_in "Name", with: @licensee.name
    fill_in "Nationality", with: @licensee.nationality
    fill_in "Password", with: @licensee.password
    click_on "Create Licensee"

    assert_text "Licensee was successfully created"
    click_on "Back"
  end

  test "updating a Licensee" do
    visit licensees_url
    click_on "Edit", match: :first

    fill_in "Address", with: @licensee.address
    fill_in "Branch", with: @licensee.branch_id
    fill_in "Contact", with: @licensee.contact
    fill_in "Email", with: @licensee.email
    fill_in "Experiences", with: @licensee.experiences
    fill_in "Gender", with: @licensee.gender
    fill_in "Ic", with: @licensee.ic
    fill_in "Name", with: @licensee.name
    fill_in "Nationality", with: @licensee.nationality
    fill_in "Password", with: @licensee.password
    click_on "Update Licensee"

    assert_text "Licensee was successfully updated"
    click_on "Back"
  end

  test "destroying a Licensee" do
    visit licensees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Licensee was successfully destroyed"
  end
end
