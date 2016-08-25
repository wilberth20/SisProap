require 'test_helper'

class DatosGeneralesAvancesControllerTest < ActionController::TestCase
  setup do
    @datos_generales_avance = datos_generales_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_generales_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_generales_avance" do
    assert_difference('DatosGeneralesAvance.count') do
      post :create, datos_generales_avance: { apellido_inv: @datos_generales_avance.apellido_inv, area_investigacion: @datos_generales_avance.area_investigacion, categoria: @datos_generales_avance.categoria, facultad: @datos_generales_avance.facultad, fecha_fin: @datos_generales_avance.fecha_fin, fecha_inicio: @datos_generales_avance.fecha_inicio, linea_investigacion: @datos_generales_avance.linea_investigacion, nombre_inv: @datos_generales_avance.nombre_inv, nombre_proyecto: @datos_generales_avance.nombre_proyecto }
    end

    assert_redirected_to datos_generales_avance_path(assigns(:datos_generales_avance))
  end

  test "should show datos_generales_avance" do
    get :show, id: @datos_generales_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_generales_avance
    assert_response :success
  end

  test "should update datos_generales_avance" do
    patch :update, id: @datos_generales_avance, datos_generales_avance: { apellido_inv: @datos_generales_avance.apellido_inv, area_investigacion: @datos_generales_avance.area_investigacion, categoria: @datos_generales_avance.categoria, facultad: @datos_generales_avance.facultad, fecha_fin: @datos_generales_avance.fecha_fin, fecha_inicio: @datos_generales_avance.fecha_inicio, linea_investigacion: @datos_generales_avance.linea_investigacion, nombre_inv: @datos_generales_avance.nombre_inv, nombre_proyecto: @datos_generales_avance.nombre_proyecto }
    assert_redirected_to datos_generales_avance_path(assigns(:datos_generales_avance))
  end

  test "should destroy datos_generales_avance" do
    assert_difference('DatosGeneralesAvance.count', -1) do
      delete :destroy, id: @datos_generales_avance
    end

    assert_redirected_to datos_generales_avances_path
  end
end
