require 'test_helper'

class ParticipantesProyectoAvancesControllerTest < ActionController::TestCase
  setup do
    @participantes_proyecto_avance = participantes_proyecto_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participantes_proyecto_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participantes_proyecto_avance" do
    assert_difference('ParticipantesProyectoAvance.count') do
      post :create, participantes_proyecto_avance: { apellido_parti: @participantes_proyecto_avance.apellido_parti, cargo: @participantes_proyecto_avance.cargo, correo: @participantes_proyecto_avance.correo, facultad: @participantes_proyecto_avance.facultad, funciones_responsabilidades: @participantes_proyecto_avance.funciones_responsabilidades, nombre_parti: @participantes_proyecto_avance.nombre_parti, resum_resultados: @participantes_proyecto_avance.resum_resultados, telefono: @participantes_proyecto_avance.telefono }
    end

    assert_redirected_to participantes_proyecto_avance_path(assigns(:participantes_proyecto_avance))
  end

  test "should show participantes_proyecto_avance" do
    get :show, id: @participantes_proyecto_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participantes_proyecto_avance
    assert_response :success
  end

  test "should update participantes_proyecto_avance" do
    patch :update, id: @participantes_proyecto_avance, participantes_proyecto_avance: { apellido_parti: @participantes_proyecto_avance.apellido_parti, cargo: @participantes_proyecto_avance.cargo, correo: @participantes_proyecto_avance.correo, facultad: @participantes_proyecto_avance.facultad, funciones_responsabilidades: @participantes_proyecto_avance.funciones_responsabilidades, nombre_parti: @participantes_proyecto_avance.nombre_parti, resum_resultados: @participantes_proyecto_avance.resum_resultados, telefono: @participantes_proyecto_avance.telefono }
    assert_redirected_to participantes_proyecto_avance_path(assigns(:participantes_proyecto_avance))
  end

  test "should destroy participantes_proyecto_avance" do
    assert_difference('ParticipantesProyectoAvance.count', -1) do
      delete :destroy, id: @participantes_proyecto_avance
    end

    assert_redirected_to participantes_proyecto_avances_path
  end
end
