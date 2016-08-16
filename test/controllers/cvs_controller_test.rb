require 'test_helper'

class CvsControllerTest < ActionController::TestCase
  setup do
    @cv = cvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cv" do
    assert_difference('Cv.count') do
      post :create, cv: { job: @cv.job, lastname: @cv.lastname, name: @cv.name, picture: @cv.picture }
    end

    assert_redirected_to cv_path(assigns(:cv))
  end

  test "should show cv" do
    get :show, id: @cv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cv
    assert_response :success
  end

  test "should update cv" do
    patch :update, id: @cv, cv: { job: @cv.job, lastname: @cv.lastname, name: @cv.name, picture: @cv.picture }
    assert_redirected_to cv_path(assigns(:cv))
  end

  test "should destroy cv" do
    assert_difference('Cv.count', -1) do
      delete :destroy, id: @cv
    end

    assert_redirected_to cvs_path
  end
end
