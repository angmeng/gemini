require "application_system_test_case"

class MothersTest < ApplicationSystemTestCase
  setup do
    @mother = mothers(:one)
  end

  test "visiting the index" do
    visit mothers_url
    assert_selector "h1", text: "Mothers"
  end

  test "creating a Mother" do
    visit mothers_url
    click_on "New Mother"

    fill_in "Address", with: @mother.address
    fill_in "Branch", with: @mother.branch_id
    fill_in "Contact", with: @mother.contact
    fill_in "Email", with: @mother.email
    fill_in "Gender", with: @mother.gender
    fill_in "Ic", with: @mother.ic
    fill_in "Name", with: @mother.name
    fill_in "Nationality", with: @mother.nationality
    fill_in "Password", with: @mother.password
    click_on "Create Mother"

    assert_text "Mother was successfully created"
    click_on "Back"
  end

  test "updating a Mother" do
    visit mothers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @mother.address
    fill_in "Branch", with: @mother.branch_id
    fill_in "Contact", with: @mother.contact
    fill_in "Email", with: @mother.email
    fill_in "Gender", with: @mother.gender
    fill_in "Ic", with: @mother.ic
    fill_in "Name", with: @mother.name
    fill_in "Nationality", with: @mother.nationality
    fill_in "Password", with: @mother.password
    click_on "Update Mother"

    assert_text "Mother was successfully updated"
    click_on "Back"
  end

  test "destroying a Mother" do
    visit mothers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mother was successfully destroyed"
  end
end
