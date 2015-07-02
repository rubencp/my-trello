require 'test_helper'

class SaRequestsControllerTest < ActionController::TestCase
  setup do
    @sa_request = sa_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sa_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sa_request" do
    assert_difference('SaRequest.count') do
      post :create, sa_request: { applicant: @sa_request.applicant, decision: @sa_request.decision, impacted_projects: @sa_request.impacted_projects, mechanical_interfaces: @sa_request.mechanical_interfaces, sa_incharge: @sa_request.sa_incharge, status: @sa_request.status, sub_projects: @sa_request.sub_projects, title: @sa_request.title, topic: @sa_request.topic }
    end

    assert_redirected_to sa_request_path(assigns(:sa_request))
  end

  test "should show sa_request" do
    get :show, id: @sa_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sa_request
    assert_response :success
  end

  test "should update sa_request" do
    patch :update, id: @sa_request, sa_request: { applicant: @sa_request.applicant, decision: @sa_request.decision, impacted_projects: @sa_request.impacted_projects, mechanical_interfaces: @sa_request.mechanical_interfaces, sa_incharge: @sa_request.sa_incharge, status: @sa_request.status, sub_projects: @sa_request.sub_projects, title: @sa_request.title, topic: @sa_request.topic }
    assert_redirected_to sa_request_path(assigns(:sa_request))
  end

  test "should destroy sa_request" do
    assert_difference('SaRequest.count', -1) do
      delete :destroy, id: @sa_request
    end

    assert_redirected_to sa_requests_path
  end
end
