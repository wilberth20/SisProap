require 'test_helper'

class DatosPersonalesControllerTest < ActionController::TestCase
  setup do
    @datos_personale = datos_personales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_personales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_personale" do
    assert_difference('DatosPersonale.count') do
      post :create, datos_personale: { apellido: @datos_personale.apellido, celular: @datos_personale.celular, curriculum: @datos_personale.curriculum, departamento: @datos_personale.departamento, email: @datos_personale.email, experiencia: @datos_personale.experiencia, facultad: @datos_personale.facultad, formacion_academica: @datos_personale.formacion_academica, nombre: @datos_personale.nombre, programa: @datos_personale.programa, telefono: @datos_personale.telefono }
    end

    assert_redirected_to datos_personale_path(assigns(:datos_personale))
  end

  test "should show datos_personale" do
    get :show, id: @datos_personale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_personale
    assert_response :success
  end

  test "should update datos_personale" do
    patch :update, id: @datos_personale, datos_personale: { apellido: @datos_personale.apellido, celular: @datos_personale.celular, curriculum: @datos_personale.curriculum, departamento: @datos_personale.departamento, email: @datos_personale.email, experiencia: @datos_personale.experiencia, facultad: @datos_personale.facultad, formacion_academica: @datos_personale.formacion_academica, nombre: @datos_personale.nombre, programa: @datos_personale.programa, telefono: @datos_personale.telefono }
    assert_redirected_to datos_personale_path(assigns(:datos_personale))
  end

  test "should destroy datos_personale" do
    assert_difference('DatosPersonale.count', -1) do
      delete :destroy, id: @datos_personale
    end

    assert_redirected_to datos_personales_path
  end
end
