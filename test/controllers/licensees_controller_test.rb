require 'test_helper'

class LicenseesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @licensee = licensees(:one)
  end

  test "should get index" do
    get licensees_url
    assert_response :success
  end

  test "should get new" do
    get new_licensee_url
    assert_response :success
  end

  test "should create licensee" do
    assert_difference('Licensee.count') do
      post licensees_url, params: { licensee: { address: @licensee.address, branch_id: @licensee.branch_id, contact: @licensee.contact, email: @licensee.email, experiences: @licensee.experiences, gender: @licensee.gender, ic: @licensee.ic, name: @licensee.name, nationality: @licensee.nationality, password: @licensee.password } }
    end

    assert_redirected_to licensee_url(Licensee.last)
  end

  test "should show licensee" do
    get licensee_url(@licensee)
    assert_response :success
  end

  test "should get edit" do
    get edit_licensee_url(@licensee)
    assert_response :success
  end

  test "should update licensee" do
    patch licensee_url(@licensee), params: { licensee: { address: @licensee.address, branch_id: @licensee.branch_id, contact: @licensee.contact, email: @licensee.email, experiences: @licensee.experiences, gender: @licensee.gender, ic: @licensee.ic, name: @licensee.name, nationality: @licensee.nationality, password: @licensee.password } }
    assert_redirected_to licensee_url(@licensee)
  end

  test "should destroy licensee" do
    assert_difference('Licensee.count', -1) do
      delete licensee_url(@licensee)
    end

    assert_redirected_to licensees_url
  end
end
