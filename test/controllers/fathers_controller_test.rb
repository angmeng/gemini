require 'test_helper'

class FathersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @father = fathers(:one)
  end

  test "should get index" do
    get fathers_url
    assert_response :success
  end

  test "should get new" do
    get new_father_url
    assert_response :success
  end

  test "should create father" do
    assert_difference('Father.count') do
      post fathers_url, params: { father: { address: @father.address, branch_id: @father.branch_id, contact: @father.contact, email: @father.email, gender: @father.gender, ic: @father.ic, name: @father.name, nationality: @father.nationality, password: @father.password } }
    end

    assert_redirected_to father_url(Father.last)
  end

  test "should show father" do
    get father_url(@father)
    assert_response :success
  end

  test "should get edit" do
    get edit_father_url(@father)
    assert_response :success
  end

  test "should update father" do
    patch father_url(@father), params: { father: { address: @father.address, branch_id: @father.branch_id, contact: @father.contact, email: @father.email, gender: @father.gender, ic: @father.ic, name: @father.name, nationality: @father.nationality, password: @father.password } }
    assert_redirected_to father_url(@father)
  end

  test "should destroy father" do
    assert_difference('Father.count', -1) do
      delete father_url(@father)
    end

    assert_redirected_to fathers_url
  end
end
