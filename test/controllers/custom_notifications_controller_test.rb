require 'test_helper'

class CustomNotificationsControllerTest < ActionController::TestCase
  setup do
    @custom_notification = custom_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_notification" do
    assert_difference('CustomNotification.count') do
      post :create, custom_notification: { days: @custom_notification.days, food_id: @custom_notification.food_id, user_id: @custom_notification.user_id }
    end

    assert_redirected_to custom_notification_path(assigns(:custom_notification))
  end

  test "should show custom_notification" do
    get :show, id: @custom_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom_notification
    assert_response :success
  end

  test "should update custom_notification" do
    patch :update, id: @custom_notification, custom_notification: { days: @custom_notification.days, food_id: @custom_notification.food_id, user_id: @custom_notification.user_id }
    assert_redirected_to custom_notification_path(assigns(:custom_notification))
  end

  test "should destroy custom_notification" do
    assert_difference('CustomNotification.count', -1) do
      delete :destroy, id: @custom_notification
    end

    assert_redirected_to custom_notifications_path
  end
end
