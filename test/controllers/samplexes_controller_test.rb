require 'test_helper'

class SamplexesControllerTest < ActionController::TestCase
  setup do
    @samplex = samplexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samplexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create samplex" do
    assert_difference('Samplex.count') do
      post :create, samplex: { fname: @samplex.fname, lname: @samplex.lname, lname: @samplex.lname }
    end

    assert_redirected_to samplex_path(assigns(:samplex))
  end

  test "should show samplex" do
    get :show, id: @samplex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @samplex
    assert_response :success
  end

  test "should update samplex" do
    patch :update, id: @samplex, samplex: { fname: @samplex.fname, lname: @samplex.lname, lname: @samplex.lname }
    assert_redirected_to samplex_path(assigns(:samplex))
  end

  test "should destroy samplex" do
    assert_difference('Samplex.count', -1) do
      delete :destroy, id: @samplex
    end

    assert_redirected_to samplexes_path
  end
end
