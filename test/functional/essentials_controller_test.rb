require 'test_helper'

class EssentialsControllerTest < ActionController::TestCase
  setup do
    @essential = essentials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:essentials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create essential" do
    assert_difference('Essential.count') do
      post :create, essential: @essential.attributes
    end

    assert_redirected_to essential_path(assigns(:essential))
  end

  test "should show essential" do
    get :show, id: @essential.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @essential.to_param
    assert_response :success
  end

  test "should update essential" do
    put :update, id: @essential.to_param, essential: @essential.attributes
    assert_redirected_to essential_path(assigns(:essential))
  end

  test "should destroy essential" do
    assert_difference('Essential.count', -1) do
      delete :destroy, id: @essential.to_param
    end

    assert_redirected_to essentials_path
  end
end
