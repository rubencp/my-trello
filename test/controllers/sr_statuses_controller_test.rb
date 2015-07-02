require 'test_helper'

class SrStatusesControllerTest < ActionController::TestCase
  setup do
    @sr_status = sr_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sr_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sr_status" do
    assert_difference('SrStatus.count') do
      post :create, sr_status: { name: @sr_status.name }
    end

    assert_redirected_to sr_status_path(assigns(:sr_status))
  end

  test "should show sr_status" do
    get :show, id: @sr_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sr_status
    assert_response :success
  end

  test "should update sr_status" do
    patch :update, id: @sr_status, sr_status: { name: @sr_status.name }
    assert_redirected_to sr_status_path(assigns(:sr_status))
  end

  test "should destroy sr_status" do
    assert_difference('SrStatus.count', -1) do
      delete :destroy, id: @sr_status
    end

    assert_redirected_to sr_statuses_path
  end
end
