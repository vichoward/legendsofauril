require 'test_helper'

class EnemiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enemies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enemy" do
    assert_difference('Enemy.count') do
      post :create, :enemy => { }
    end

    assert_redirected_to enemy_path(assigns(:enemy))
  end

  test "should show enemy" do
    get :show, :id => enemies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => enemies(:one).to_param
    assert_response :success
  end

  test "should update enemy" do
    put :update, :id => enemies(:one).to_param, :enemy => { }
    assert_redirected_to enemy_path(assigns(:enemy))
  end

  test "should destroy enemy" do
    assert_difference('Enemy.count', -1) do
      delete :destroy, :id => enemies(:one).to_param
    end

    assert_redirected_to enemies_path
  end
end
