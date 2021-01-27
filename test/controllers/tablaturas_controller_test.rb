require "test_helper"

class TablaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tablatura = tablaturas(:one)
  end

  test "should get index" do
    get tablaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_tablatura_url
    assert_response :success
  end

  test "should create tablatura" do
    assert_difference('Tablatura.count') do
      post tablaturas_url, params: { tablatura: { fecha: @tablatura.fecha, traductor: @tablatura.traductor, web: @tablatura.web } }
    end

    assert_redirected_to tablatura_url(Tablatura.last)
  end

  test "should show tablatura" do
    get tablatura_url(@tablatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_tablatura_url(@tablatura)
    assert_response :success
  end

  test "should update tablatura" do
    patch tablatura_url(@tablatura), params: { tablatura: { fecha: @tablatura.fecha, traductor: @tablatura.traductor, web: @tablatura.web } }
    assert_redirected_to tablatura_url(@tablatura)
  end

  test "should destroy tablatura" do
    assert_difference('Tablatura.count', -1) do
      delete tablatura_url(@tablatura)
    end

    assert_redirected_to tablaturas_url
  end
end
