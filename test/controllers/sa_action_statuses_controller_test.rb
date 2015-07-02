require 'test_helper'

class SaActionStatusesControllerTest < ActionController::TestCase
  setup do
    @sa_action_status = sa_action_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sa_action_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sa_action_status" do
    assert_difference('SaActionStatus.count') do
      post :create, sa_action_status: { name: @sa_action_status.name }
    end

    assert_redirected_to sa_action_status_path(assigns(:sa_action_status))
  end

  test "should show sa_action_status" do
    get :show, id: @sa_action_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sa_action_status
    assert_response :success
  end

  test "should update sa_action_status" do
    patch :update, id: @sa_action_status, sa_action_status: { name: @sa_action_status.name }
    assert_redirected_to sa_action_status_path(assigns(:sa_action_status))
  end

  test "should destroy sa_action_status" do
    assert_difference('SaActionStatus.count', -1) do
      delete :destroy, id: @sa_action_status
    end

    assert_redirected_to sa_action_statuses_path
  end
end
