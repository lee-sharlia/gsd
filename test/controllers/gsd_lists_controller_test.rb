require 'test_helper'

class GsdListsControllerTest < ActionController::TestCase
  setup do
    @gsd_list = gsd_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gsd_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gsd_list" do
    assert_difference('GsdList.count') do
      post :create, gsd_list: { description: @gsd_list.description, title: @gsd_list.title }
    end

    assert_redirected_to gsd_list_path(assigns(:gsd_list))
  end

  test "should show gsd_list" do
    get :show, id: @gsd_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gsd_list
    assert_response :success
  end

  test "should update gsd_list" do
    patch :update, id: @gsd_list, gsd_list: { description: @gsd_list.description, title: @gsd_list.title }
    assert_redirected_to gsd_list_path(assigns(:gsd_list))
  end

  test "should destroy gsd_list" do
    assert_difference('GsdList.count', -1) do
      delete :destroy, id: @gsd_list
    end

    assert_redirected_to gsd_lists_path
  end
end
