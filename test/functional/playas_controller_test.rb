require 'test_helper'

class PlayasControllerTest < ActionController::TestCase
  setup do
    @playa = playas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playa" do
    assert_difference('Playa.count') do
      post :create, playa: { email: @playa.email }
    end

    assert_redirected_to playa_path(assigns(:playa))
  end

  test "should show playa" do
    get :show, id: @playa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playa
    assert_response :success
  end

  test "should update playa" do
    put :update, id: @playa, playa: { email: @playa.email }
    assert_redirected_to playa_path(assigns(:playa))
  end

  test "should destroy playa" do
    assert_difference('Playa.count', -1) do
      delete :destroy, id: @playa
    end

    assert_redirected_to playas_path
  end
end
