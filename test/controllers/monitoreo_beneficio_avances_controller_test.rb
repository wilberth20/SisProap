require 'test_helper'

class MonitoreoBeneficioAvancesControllerTest < ActionController::TestCase
  setup do
    @monitoreo_beneficio_avance = monitoreo_beneficio_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitoreo_beneficio_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitoreo_beneficio_avance" do
    assert_difference('MonitoreoBeneficioAvance.count') do
      post :create, monitoreo_beneficio_avance: { actv_realizadas: @monitoreo_beneficio_avance.actv_realizadas, apellido_contacto: @monitoreo_beneficio_avance.apellido_contacto, compromiso_organizacion: @monitoreo_beneficio_avance.compromiso_organizacion, nombre_contacto: @monitoreo_beneficio_avance.nombre_contacto, nombre_organizacion: @monitoreo_beneficio_avance.nombre_organizacion, tipo_colaboracion: @monitoreo_beneficio_avance.tipo_colaboracion }
    end

    assert_redirected_to monitoreo_beneficio_avance_path(assigns(:monitoreo_beneficio_avance))
  end

  test "should show monitoreo_beneficio_avance" do
    get :show, id: @monitoreo_beneficio_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitoreo_beneficio_avance
    assert_response :success
  end

  test "should update monitoreo_beneficio_avance" do
    patch :update, id: @monitoreo_beneficio_avance, monitoreo_beneficio_avance: { actv_realizadas: @monitoreo_beneficio_avance.actv_realizadas, apellido_contacto: @monitoreo_beneficio_avance.apellido_contacto, compromiso_organizacion: @monitoreo_beneficio_avance.compromiso_organizacion, nombre_contacto: @monitoreo_beneficio_avance.nombre_contacto, nombre_organizacion: @monitoreo_beneficio_avance.nombre_organizacion, tipo_colaboracion: @monitoreo_beneficio_avance.tipo_colaboracion }
    assert_redirected_to monitoreo_beneficio_avance_path(assigns(:monitoreo_beneficio_avance))
  end

  test "should destroy monitoreo_beneficio_avance" do
    assert_difference('MonitoreoBeneficioAvance.count', -1) do
      delete :destroy, id: @monitoreo_beneficio_avance
    end

    assert_redirected_to monitoreo_beneficio_avances_path
  end
end
