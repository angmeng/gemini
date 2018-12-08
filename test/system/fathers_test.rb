require "application_system_test_case"

class FathersTest < ApplicationSystemTestCase
  setup do
    @father = fathers(:one)
  end

  test "visiting the index" do
    visit fathers_url
    assert_selector "h1", text: "Fathers"
  end

  test "creating a Father" do
    visit fathers_url
    click_on "New Father"

    fill_in "Address", with: @father.address
    fill_in "Branch", with: @father.branch_id
    fill_in "Contact", with: @father.contact
    fill_in "Email", with: @father.email
    fill_in "Gender", with: @father.gender
    fill_in "Ic", with: @father.ic
    fill_in "Name", with: @father.name
    fill_in "Nationality", with: @father.nationality
    fill_in "Password", with: @father.password
    click_on "Create Father"

    assert_text "Father was successfully created"
    click_on "Back"
  end

  test "updating a Father" do
    visit fathers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @father.address
    fill_in "Branch", with: @father.branch_id
    fill_in "Contact", with: @father.contact
    fill_in "Email", with: @father.email
    fill_in "Gender", with: @father.gender
    fill_in "Ic", with: @father.ic
    fill_in "Name", with: @father.name
    fill_in "Nationality", with: @father.nationality
    fill_in "Password", with: @father.password
    click_on "Update Father"

    assert_text "Father was successfully updated"
    click_on "Back"
  end

  test "destroying a Father" do
    visit fathers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Father was successfully destroyed"
  end
end
