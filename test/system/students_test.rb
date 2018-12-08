require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Address", with: @student.address
    fill_in "Birthday", with: @student.birthday
    fill_in "Classroom", with: @student.classroom_id
    fill_in "Enrollment date", with: @student.enrollment_date
    fill_in "Gender", with: @student.gender
    fill_in "Ic", with: @student.ic
    fill_in "Name", with: @student.name
    fill_in "Nationality", with: @student.nationality
    fill_in "Status enrollment", with: @student.status_enrollment
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Address", with: @student.address
    fill_in "Birthday", with: @student.birthday
    fill_in "Classroom", with: @student.classroom_id
    fill_in "Enrollment date", with: @student.enrollment_date
    fill_in "Gender", with: @student.gender
    fill_in "Ic", with: @student.ic
    fill_in "Name", with: @student.name
    fill_in "Nationality", with: @student.nationality
    fill_in "Status enrollment", with: @student.status_enrollment
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
