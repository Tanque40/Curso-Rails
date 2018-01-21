require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get quienes_somos" do
    get home_quienes_somos_url
    assert_response :success
  end

  test "should get contacto" do
    get home_contacto_url
    assert_response :success
  end

end
