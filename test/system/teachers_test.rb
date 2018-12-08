require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "creating a Teacher" do
    visit teachers_url
    click_on "New Teacher"

    fill_in "Address", with: @teacher.address
    fill_in "Classroom", with: @teacher.classroom_id
    fill_in "Contact", with: @teacher.contact
    fill_in "Email", with: @teacher.email
    fill_in "Experiences", with: @teacher.experiences
    fill_in "Gender", with: @teacher.gender
    fill_in "Ic", with: @teacher.ic
    fill_in "Name", with: @teacher.name
    fill_in "Nationality", with: @teacher.nationality
    fill_in "Password", with: @teacher.password
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "updating a Teacher" do
    visit teachers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @teacher.address
    fill_in "Classroom", with: @teacher.classroom_id
    fill_in "Contact", with: @teacher.contact
    fill_in "Email", with: @teacher.email
    fill_in "Experiences", with: @teacher.experiences
    fill_in "Gender", with: @teacher.gender
    fill_in "Ic", with: @teacher.ic
    fill_in "Name", with: @teacher.name
    fill_in "Nationality", with: @teacher.nationality
    fill_in "Password", with: @teacher.password
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher" do
    visit teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher was successfully destroyed"
  end
end
