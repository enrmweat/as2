require 'test_helper'

class Events2sControllerTest < ActionController::TestCase
  setup do
    @events2 = events2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events2" do
    assert_difference('Events2.count') do
      post :create, events2: { Event: @events2.Event, Message: @events2.Message }
    end

    assert_redirected_to events2_path(assigns(:events2))
  end

  test "should show events2" do
    get :show, id: @events2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @events2
    assert_response :success
  end

  test "should update events2" do
    put :update, id: @events2, events2: { Event: @events2.Event, Message: @events2.Message }
    assert_redirected_to events2_path(assigns(:events2))
  end

  test "should destroy events2" do
    assert_difference('Events2.count', -1) do
      delete :destroy, id: @events2
    end

    assert_redirected_to events2s_path
  end
end
