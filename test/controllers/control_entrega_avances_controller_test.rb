require 'test_helper'

class ControlEntregaAvancesControllerTest < ActionController::TestCase
  setup do
    @control_entrega_avance = control_entrega_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:control_entrega_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create control_entrega_avance" do
    assert_difference('ControlEntregaAvance.count') do
      post :create, control_entrega_avance: { fecha_entrega: @control_entrega_avance.fecha_entrega, fecha_limite: @control_entrega_avance.fecha_limite, numero_informe: @control_entrega_avance.numero_informe }
    end

    assert_redirected_to control_entrega_avance_path(assigns(:control_entrega_avance))
  end

  test "should show control_entrega_avance" do
    get :show, id: @control_entrega_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @control_entrega_avance
    assert_response :success
  end

  test "should update control_entrega_avance" do
    patch :update, id: @control_entrega_avance, control_entrega_avance: { fecha_entrega: @control_entrega_avance.fecha_entrega, fecha_limite: @control_entrega_avance.fecha_limite, numero_informe: @control_entrega_avance.numero_informe }
    assert_redirected_to control_entrega_avance_path(assigns(:control_entrega_avance))
  end

  test "should destroy control_entrega_avance" do
    assert_difference('ControlEntregaAvance.count', -1) do
      delete :destroy, id: @control_entrega_avance
    end

    assert_redirected_to control_entrega_avances_path
  end
end
