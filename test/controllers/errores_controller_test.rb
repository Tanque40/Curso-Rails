require 'test_helper'

class ErroresControllerTest < ActionDispatch::IntegrationTest
  test "should get rutas" do
    get errores_rutas_url
    assert_response :success
  end

end
