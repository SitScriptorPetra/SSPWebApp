require "test_helper"

class TraductorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traductor = traductors(:one)
  end

  test "should get index" do
    get traductors_url
    assert_response :success
  end

  test "should get new" do
    get new_traductor_url
    assert_response :success
  end

  test "should create traductor" do
    assert_difference('Traductor.count') do
      post traductors_url, params: { traductor: { correo: @traductor.correo, nombre: @traductor.nombre } }
    end

    assert_redirected_to traductor_url(Traductor.last)
  end

  test "should show traductor" do
    get traductor_url(@traductor)
    assert_response :success
  end

  test "should get edit" do
    get edit_traductor_url(@traductor)
    assert_response :success
  end

  test "should update traductor" do
    patch traductor_url(@traductor), params: { traductor: { correo: @traductor.correo, nombre: @traductor.nombre } }
    assert_redirected_to traductor_url(@traductor)
  end

  test "should destroy traductor" do
    assert_difference('Traductor.count', -1) do
      delete traductor_url(@traductor)
    end

    assert_redirected_to traductors_url
  end
end
