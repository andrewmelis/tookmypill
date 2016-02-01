require 'test_helper'

class PillTakenEventsControllerTest < ActionController::TestCase
  setup do
    @pill_taken_event = pill_taken_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pill_taken_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pill_taken_event" do
    assert_difference('PillTakenEvent.count') do
      post :create, pill_taken_event: {  }
    end

    assert_redirected_to pill_taken_event_path(assigns(:pill_taken_event))
  end

  test "should show pill_taken_event" do
    get :show, id: @pill_taken_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pill_taken_event
    assert_response :success
  end

  test "should update pill_taken_event" do
    patch :update, id: @pill_taken_event, pill_taken_event: {  }
    assert_redirected_to pill_taken_event_path(assigns(:pill_taken_event))
  end

  test "should destroy pill_taken_event" do
    assert_difference('PillTakenEvent.count', -1) do
      delete :destroy, id: @pill_taken_event
    end

    assert_redirected_to pill_taken_events_path
  end
end
