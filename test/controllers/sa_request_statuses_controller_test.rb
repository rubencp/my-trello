require 'test_helper'

class SaRequestStatusesControllerTest < ActionController::TestCase
  setup do
    @sa_request_status = sa_request_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sa_request_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sa_request_status" do
    assert_difference('SaRequestStatus.count') do
      post :create, sa_request_status: { name: @sa_request_status.name }
    end

    assert_redirected_to sa_request_status_path(assigns(:sa_request_status))
  end

  test "should show sa_request_status" do
    get :show, id: @sa_request_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sa_request_status
    assert_response :success
  end

  test "should update sa_request_status" do
    patch :update, id: @sa_request_status, sa_request_status: { name: @sa_request_status.name }
    assert_redirected_to sa_request_status_path(assigns(:sa_request_status))
  end

  test "should destroy sa_request_status" do
    assert_difference('SaRequestStatus.count', -1) do
      delete :destroy, id: @sa_request_status
    end

    assert_redirected_to sa_request_statuses_path
  end
end
