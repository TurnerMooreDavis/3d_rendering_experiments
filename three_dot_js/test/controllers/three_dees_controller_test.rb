require 'test_helper'

class ThreeDeesControllerTest < ActionController::TestCase
  setup do
    @three_dee = three_dees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:three_dees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create three_dee" do
    assert_difference('ThreeDee.count') do
      post :create, three_dee: { description: @three_dee.description, name: @three_dee.name }
    end

    assert_redirected_to three_dee_path(assigns(:three_dee))
  end

  test "should show three_dee" do
    get :show, id: @three_dee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @three_dee
    assert_response :success
  end

  test "should update three_dee" do
    patch :update, id: @three_dee, three_dee: { description: @three_dee.description, name: @three_dee.name }
    assert_redirected_to three_dee_path(assigns(:three_dee))
  end

  test "should destroy three_dee" do
    assert_difference('ThreeDee.count', -1) do
      delete :destroy, id: @three_dee
    end

    assert_redirected_to three_dees_path
  end
end
