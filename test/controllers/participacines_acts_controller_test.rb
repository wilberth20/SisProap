require 'test_helper'

class ParticipacinesActsControllerTest < ActionController::TestCase
  setup do
    @participacines_act = participacines_acts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participacines_acts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participacines_act" do
    assert_difference('ParticipacinesAct.count') do
      post :create, participacines_act: { fecha: @participacines_act.fecha, inst_naci_internaci: @participacines_act.inst_naci_internaci, nombre_act: @participacines_act.nombre_act, numero: @participacines_act.numero, tipo_act: @participacines_act.tipo_act, tipo_planific_planificada: @participacines_act.tipo_planific_planificada }
    end

    assert_redirected_to participacines_act_path(assigns(:participacines_act))
  end

  test "should show participacines_act" do
    get :show, id: @participacines_act
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participacines_act
    assert_response :success
  end

  test "should update participacines_act" do
    patch :update, id: @participacines_act, participacines_act: { fecha: @participacines_act.fecha, inst_naci_internaci: @participacines_act.inst_naci_internaci, nombre_act: @participacines_act.nombre_act, numero: @participacines_act.numero, tipo_act: @participacines_act.tipo_act, tipo_planific_planificada: @participacines_act.tipo_planific_planificada }
    assert_redirected_to participacines_act_path(assigns(:participacines_act))
  end

  test "should destroy participacines_act" do
    assert_difference('ParticipacinesAct.count', -1) do
      delete :destroy, id: @participacines_act
    end

    assert_redirected_to participacines_acts_path
  end
end
