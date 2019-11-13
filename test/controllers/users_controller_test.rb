require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { admin: @user.admin, card_exp_month: @user.card_exp_month, card_exp_year: @user.card_exp_year, card_last4: @user.card_last4, card_type: @user.card_type, email: @user.email, expires_at: @user.expires_at, name: @user.name, stripe_id: @user.stripe_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { admin: @user.admin, card_exp_month: @user.card_exp_month, card_exp_year: @user.card_exp_year, card_last4: @user.card_last4, card_type: @user.card_type, email: @user.email, expires_at: @user.expires_at, name: @user.name, stripe_id: @user.stripe_id } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
