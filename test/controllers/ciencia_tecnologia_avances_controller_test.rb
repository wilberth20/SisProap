require 'test_helper'

class CienciaTecnologiaAvancesControllerTest < ActionController::TestCase
  setup do
    @ciencia_tecnologia_avance = ciencia_tecnologia_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ciencia_tecnologia_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ciencia_tecnologia_avance" do
    assert_difference('CienciaTecnologiaAvance.count') do
      post :create, ciencia_tecnologia_avance: { fecha: @ciencia_tecnologia_avance.fecha, informe_avance: @ciencia_tecnologia_avance.informe_avance, inst_nac_internac: @ciencia_tecnologia_avance.inst_nac_internac, nombre_act: @ciencia_tecnologia_avance.nombre_act, participantes: @ciencia_tecnologia_avance.participantes, tipo_act: @ciencia_tecnologia_avance.tipo_act, tipo_partiplanif: @ciencia_tecnologia_avance.tipo_partiplanif }
    end

    assert_redirected_to ciencia_tecnologia_avance_path(assigns(:ciencia_tecnologia_avance))
  end

  test "should show ciencia_tecnologia_avance" do
    get :show, id: @ciencia_tecnologia_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ciencia_tecnologia_avance
    assert_response :success
  end

  test "should update ciencia_tecnologia_avance" do
    patch :update, id: @ciencia_tecnologia_avance, ciencia_tecnologia_avance: { fecha: @ciencia_tecnologia_avance.fecha, informe_avance: @ciencia_tecnologia_avance.informe_avance, inst_nac_internac: @ciencia_tecnologia_avance.inst_nac_internac, nombre_act: @ciencia_tecnologia_avance.nombre_act, participantes: @ciencia_tecnologia_avance.participantes, tipo_act: @ciencia_tecnologia_avance.tipo_act, tipo_partiplanif: @ciencia_tecnologia_avance.tipo_partiplanif }
    assert_redirected_to ciencia_tecnologia_avance_path(assigns(:ciencia_tecnologia_avance))
  end

  test "should destroy ciencia_tecnologia_avance" do
    assert_difference('CienciaTecnologiaAvance.count', -1) do
      delete :destroy, id: @ciencia_tecnologia_avance
    end

    assert_redirected_to ciencia_tecnologia_avances_path
  end
end
