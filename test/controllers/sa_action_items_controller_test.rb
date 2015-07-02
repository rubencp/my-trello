require 'test_helper'

class SaActionItemsControllerTest < ActionController::TestCase
  setup do
    @sa_action_item = sa_action_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sa_action_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sa_action_item" do
    assert_difference('SaActionItem.count') do
      post :create, sa_action_item: { description: @sa_action_item.description, link_ulr: @sa_action_item.link_ulr, person_id: @sa_action_item.person_id, remark: @sa_action_item.remark, status: @sa_action_item.status, title: @sa_action_item.title }
    end

    assert_redirected_to sa_action_item_path(assigns(:sa_action_item))
  end

  test "should show sa_action_item" do
    get :show, id: @sa_action_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sa_action_item
    assert_response :success
  end

  test "should update sa_action_item" do
    patch :update, id: @sa_action_item, sa_action_item: { description: @sa_action_item.description, link_ulr: @sa_action_item.link_ulr, person_id: @sa_action_item.person_id, remark: @sa_action_item.remark, status: @sa_action_item.status, title: @sa_action_item.title }
    assert_redirected_to sa_action_item_path(assigns(:sa_action_item))
  end

  test "should destroy sa_action_item" do
    assert_difference('SaActionItem.count', -1) do
      delete :destroy, id: @sa_action_item
    end

    assert_redirected_to sa_action_items_path
  end
end
