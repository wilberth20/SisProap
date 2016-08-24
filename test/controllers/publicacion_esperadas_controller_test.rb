require 'test_helper'

class PublicacionEsperadasControllerTest < ActionController::TestCase
  setup do
    @publicacion_esperada = publicacion_esperadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publicacion_esperadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publicacion_esperada" do
    assert_difference('PublicacionEsperada.count') do
      post :create, publicacion_esperada: { conferencia_sometera: @publicacion_esperada.conferencia_sometera, fecha_esperada: @publicacion_esperada.fecha_esperada, revista_publicacion: @publicacion_esperada.revista_publicacion, titulo_publicacion: @publicacion_esperada.titulo_publicacion }
    end

    assert_redirected_to publicacion_esperada_path(assigns(:publicacion_esperada))
  end

  test "should show publicacion_esperada" do
    get :show, id: @publicacion_esperada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publicacion_esperada
    assert_response :success
  end

  test "should update publicacion_esperada" do
    patch :update, id: @publicacion_esperada, publicacion_esperada: { conferencia_sometera: @publicacion_esperada.conferencia_sometera, fecha_esperada: @publicacion_esperada.fecha_esperada, revista_publicacion: @publicacion_esperada.revista_publicacion, titulo_publicacion: @publicacion_esperada.titulo_publicacion }
    assert_redirected_to publicacion_esperada_path(assigns(:publicacion_esperada))
  end

  test "should destroy publicacion_esperada" do
    assert_difference('PublicacionEsperada.count', -1) do
      delete :destroy, id: @publicacion_esperada
    end

    assert_redirected_to publicacion_esperadas_path
  end
end
