require 'test_helper'

class KillersControllerTest < ActionController::TestCase
  setup do
    @killer = killers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:killers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create killer" do
    assert_difference('Killer.count') do
      post :create, killer: {  }
    end

    assert_redirected_to killer_path(assigns(:killer))
  end

  test "should show killer" do
    get :show, id: @killer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @killer
    assert_response :success
  end

  test "should update killer" do
    patch :update, id: @killer, killer: {  }
    assert_redirected_to killer_path(assigns(:killer))
  end

  test "should destroy killer" do
    assert_difference('Killer.count', -1) do
      delete :destroy, id: @killer
    end

    assert_redirected_to killers_path
  end
end
