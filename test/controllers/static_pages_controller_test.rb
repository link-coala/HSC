require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get caracteristicas" do
    get :caracteristicas
    assert_response :success
    assert_select "title", "HSC | Caracteristicas"
  end

  test "should get creditos" do
    get :creditos
    assert_response :success
    assert_select "title", "HSC | Creditos"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "HSC | inicio"
  end

end
