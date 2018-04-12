require 'test_helper'

class UserPromisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_promise = user_promises(:one)
  end

  test "should get index" do
    get user_promises_url
    assert_response :success
  end

  test "should get new" do
    get new_user_promise_url
    assert_response :success
  end

  test "should create user_promise" do
    assert_difference('UserPromise.count') do
      post user_promises_url, params: { user_promise: {  } }
    end

    assert_redirected_to user_promise_url(UserPromise.last)
  end

  test "should show user_promise" do
    get user_promise_url(@user_promise)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_promise_url(@user_promise)
    assert_response :success
  end

  test "should update user_promise" do
    patch user_promise_url(@user_promise), params: { user_promise: {  } }
    assert_redirected_to user_promise_url(@user_promise)
  end

  test "should destroy user_promise" do
    assert_difference('UserPromise.count', -1) do
      delete user_promise_url(@user_promise)
    end

    assert_redirected_to user_promises_url
  end
end
