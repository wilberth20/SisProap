require 'test_helper'

class ParticipacionesActsControllerTest < ActionController::TestCase
  setup do
    @participaciones_act = participaciones_acts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participaciones_acts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participaciones_act" do
    assert_difference('ParticipacionesAct.count') do
      post :create, participaciones_act: { contraparte_beneficio: @participaciones_act.contraparte_beneficio, fecha: @participaciones_act.fecha, inst_nac_internac: @participaciones_act.inst_nac_internac, nombre_act: @participaciones_act.nombre_act, numero: @participaciones_act.numero, tipo_act: @participaciones_act.tipo_act, tipo_planif: @participaciones_act.tipo_planif }
    end

    assert_redirected_to participaciones_act_path(assigns(:participaciones_act))
  end

  test "should show participaciones_act" do
    get :show, id: @participaciones_act
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participaciones_act
    assert_response :success
  end

  test "should update participaciones_act" do
    patch :update, id: @participaciones_act, participaciones_act: { contraparte_beneficio: @participaciones_act.contraparte_beneficio, fecha: @participaciones_act.fecha, inst_nac_internac: @participaciones_act.inst_nac_internac, nombre_act: @participaciones_act.nombre_act, numero: @participaciones_act.numero, tipo_act: @participaciones_act.tipo_act, tipo_planif: @participaciones_act.tipo_planif }
    assert_redirected_to participaciones_act_path(assigns(:participaciones_act))
  end

  test "should destroy participaciones_act" do
    assert_difference('ParticipacionesAct.count', -1) do
      delete :destroy, id: @participaciones_act
    end

    assert_redirected_to participaciones_acts_path
  end
end
