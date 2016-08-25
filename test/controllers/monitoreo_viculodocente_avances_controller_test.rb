require 'test_helper'

class MonitoreoViculodocenteAvancesControllerTest < ActionController::TestCase
  setup do
    @monitoreo_viculodocente_avance = monitoreo_viculodocente_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitoreo_viculodocente_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitoreo_viculodocente_avance" do
    assert_difference('MonitoreoViculodocenteAvance.count') do
      post :create, monitoreo_viculodocente_avance: { facultad: @monitoreo_viculodocente_avance.facultad, nivel_curso: @monitoreo_viculodocente_avance.nivel_curso, nombre_curso: @monitoreo_viculodocente_avance.nombre_curso, semestre: @monitoreo_viculodocente_avance.semestre }
    end

    assert_redirected_to monitoreo_viculodocente_avance_path(assigns(:monitoreo_viculodocente_avance))
  end

  test "should show monitoreo_viculodocente_avance" do
    get :show, id: @monitoreo_viculodocente_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitoreo_viculodocente_avance
    assert_response :success
  end

  test "should update monitoreo_viculodocente_avance" do
    patch :update, id: @monitoreo_viculodocente_avance, monitoreo_viculodocente_avance: { facultad: @monitoreo_viculodocente_avance.facultad, nivel_curso: @monitoreo_viculodocente_avance.nivel_curso, nombre_curso: @monitoreo_viculodocente_avance.nombre_curso, semestre: @monitoreo_viculodocente_avance.semestre }
    assert_redirected_to monitoreo_viculodocente_avance_path(assigns(:monitoreo_viculodocente_avance))
  end

  test "should destroy monitoreo_viculodocente_avance" do
    assert_difference('MonitoreoViculodocenteAvance.count', -1) do
      delete :destroy, id: @monitoreo_viculodocente_avance
    end

    assert_redirected_to monitoreo_viculodocente_avances_path
  end
end
