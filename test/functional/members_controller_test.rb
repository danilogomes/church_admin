require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { active: @member.active, birth: @member.birth, city: @member.city, cpf: @member.cpf, date_: @member.date_, date_conversion: @member.date_conversion, name: @member.name, neighborhood: @member.neighborhood, number: @member.number, phone: @member.phone, street: @member.street, uf: @member.uf }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    put :update, id: @member, member: { active: @member.active, birth: @member.birth, city: @member.city, cpf: @member.cpf, date_: @member.date_, date_conversion: @member.date_conversion, name: @member.name, neighborhood: @member.neighborhood, number: @member.number, phone: @member.phone, street: @member.street, uf: @member.uf }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
