require 'test_helper'

class MonitoreoTalentohAvancesControllerTest < ActionController::TestCase
  setup do
    @monitoreo_talentoh_avance = monitoreo_talentoh_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitoreo_talentoh_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitoreo_talentoh_avance" do
    assert_difference('MonitoreoTalentohAvance.count') do
      post :create, monitoreo_talentoh_avance: { apellido: @monitoreo_talentoh_avance.apellido, facultad: @monitoreo_talentoh_avance.facultad, nivel_academico: @monitoreo_talentoh_avance.nivel_academico, nombre: @monitoreo_talentoh_avance.nombre, otra_info: @monitoreo_talentoh_avance.otra_info, titulo_trabajo: @monitoreo_talentoh_avance.titulo_trabajo }
    end

    assert_redirected_to monitoreo_talentoh_avance_path(assigns(:monitoreo_talentoh_avance))
  end

  test "should show monitoreo_talentoh_avance" do
    get :show, id: @monitoreo_talentoh_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitoreo_talentoh_avance
    assert_response :success
  end

  test "should update monitoreo_talentoh_avance" do
    patch :update, id: @monitoreo_talentoh_avance, monitoreo_talentoh_avance: { apellido: @monitoreo_talentoh_avance.apellido, facultad: @monitoreo_talentoh_avance.facultad, nivel_academico: @monitoreo_talentoh_avance.nivel_academico, nombre: @monitoreo_talentoh_avance.nombre, otra_info: @monitoreo_talentoh_avance.otra_info, titulo_trabajo: @monitoreo_talentoh_avance.titulo_trabajo }
    assert_redirected_to monitoreo_talentoh_avance_path(assigns(:monitoreo_talentoh_avance))
  end

  test "should destroy monitoreo_talentoh_avance" do
    assert_difference('MonitoreoTalentohAvance.count', -1) do
      delete :destroy, id: @monitoreo_talentoh_avance
    end

    assert_redirected_to monitoreo_talentoh_avances_path
  end
end
