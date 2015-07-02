require 'test_helper'

class SaActionTypesControllerTest < ActionController::TestCase
  setup do
    @sa_action_type = sa_action_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sa_action_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sa_action_type" do
    assert_difference('SaActionType.count') do
      post :create, sa_action_type: { name: @sa_action_type.name }
    end

    assert_redirected_to sa_action_type_path(assigns(:sa_action_type))
  end

  test "should show sa_action_type" do
    get :show, id: @sa_action_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sa_action_type
    assert_response :success
  end

  test "should update sa_action_type" do
    patch :update, id: @sa_action_type, sa_action_type: { name: @sa_action_type.name }
    assert_redirected_to sa_action_type_path(assigns(:sa_action_type))
  end

  test "should destroy sa_action_type" do
    assert_difference('SaActionType.count', -1) do
      delete :destroy, id: @sa_action_type
    end

    assert_redirected_to sa_action_types_path
  end
end
