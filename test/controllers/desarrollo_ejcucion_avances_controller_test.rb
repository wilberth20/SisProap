require 'test_helper'

class DesarrolloEjcucionAvancesControllerTest < ActionController::TestCase
  setup do
    @desarrollo_ejcucion_avance = desarrollo_ejcucion_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desarrollo_ejcucion_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desarrollo_ejcucion_avance" do
    assert_difference('DesarrolloEjcucionAvance.count') do
      post :create, desarrollo_ejcucion_avance: { actv_desarrolladas: @desarrollo_ejcucion_avance.actv_desarrolladas, actv_pendientes: @desarrollo_ejcucion_avance.actv_pendientes, dific_resolver: @desarrollo_ejcucion_avance.dific_resolver, estado_avance: @desarrollo_ejcucion_avance.estado_avance, fecha_estiamda: @desarrollo_ejcucion_avance.fecha_estiamda, fecha_real: @desarrollo_ejcucion_avance.fecha_real, obj_especifico: @desarrollo_ejcucion_avance.obj_especifico, resultados: @desarrollo_ejcucion_avance.resultados }
    end

    assert_redirected_to desarrollo_ejcucion_avance_path(assigns(:desarrollo_ejcucion_avance))
  end

  test "should show desarrollo_ejcucion_avance" do
    get :show, id: @desarrollo_ejcucion_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desarrollo_ejcucion_avance
    assert_response :success
  end

  test "should update desarrollo_ejcucion_avance" do
    patch :update, id: @desarrollo_ejcucion_avance, desarrollo_ejcucion_avance: { actv_desarrolladas: @desarrollo_ejcucion_avance.actv_desarrolladas, actv_pendientes: @desarrollo_ejcucion_avance.actv_pendientes, dific_resolver: @desarrollo_ejcucion_avance.dific_resolver, estado_avance: @desarrollo_ejcucion_avance.estado_avance, fecha_estiamda: @desarrollo_ejcucion_avance.fecha_estiamda, fecha_real: @desarrollo_ejcucion_avance.fecha_real, obj_especifico: @desarrollo_ejcucion_avance.obj_especifico, resultados: @desarrollo_ejcucion_avance.resultados }
    assert_redirected_to desarrollo_ejcucion_avance_path(assigns(:desarrollo_ejcucion_avance))
  end

  test "should destroy desarrollo_ejcucion_avance" do
    assert_difference('DesarrolloEjcucionAvance.count', -1) do
      delete :destroy, id: @desarrollo_ejcucion_avance
    end

    assert_redirected_to desarrollo_ejcucion_avances_path
  end
end
