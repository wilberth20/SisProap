require 'test_helper'

class IdentificacionProyectosControllerTest < ActionController::TestCase
  setup do
    @identificacion_proyecto = identificacion_proyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:identificacion_proyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create identificacion_proyecto" do
    assert_difference('IdentificacionProyecto.count') do
      post :create, identificacion_proyecto: { anexos: @identificacion_proyecto.anexos, area_estrategica: @identificacion_proyecto.area_estrategica, conclucion: @identificacion_proyecto.conclucion, contraparte_beneficio: @identificacion_proyecto.contraparte_beneficio, datos_personale_id: @identificacion_proyecto.datos_personale_id, definicion_problema: @identificacion_proyecto.definicion_problema, duracion: @identificacion_proyecto.duracion, fecha_fin: @identificacion_proyecto.fecha_fin, fecha_inicio: @identificacion_proyecto.fecha_inicio, fundamento_teorico: @identificacion_proyecto.fundamento_teorico, justificacio: @identificacion_proyecto.justificacio, linea: @identificacion_proyecto.linea, plan_analisis: @identificacion_proyecto.plan_analisis, plan_talento_humano: @identificacion_proyecto.plan_talento_humano, plan_vinculo_docente: @identificacion_proyecto.plan_vinculo_docente, resumen: @identificacion_proyecto.resumen, titulo: @identificacion_proyecto.titulo }
    end

    assert_redirected_to identificacion_proyecto_path(assigns(:identificacion_proyecto))
  end

  test "should show identificacion_proyecto" do
    get :show, id: @identificacion_proyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @identificacion_proyecto
    assert_response :success
  end

  test "should update identificacion_proyecto" do
    patch :update, id: @identificacion_proyecto, identificacion_proyecto: { anexos: @identificacion_proyecto.anexos, area_estrategica: @identificacion_proyecto.area_estrategica, conclucion: @identificacion_proyecto.conclucion, contraparte_beneficio: @identificacion_proyecto.contraparte_beneficio, datos_personale_id: @identificacion_proyecto.datos_personale_id, definicion_problema: @identificacion_proyecto.definicion_problema, duracion: @identificacion_proyecto.duracion, fecha_fin: @identificacion_proyecto.fecha_fin, fecha_inicio: @identificacion_proyecto.fecha_inicio, fundamento_teorico: @identificacion_proyecto.fundamento_teorico, justificacio: @identificacion_proyecto.justificacio, linea: @identificacion_proyecto.linea, plan_analisis: @identificacion_proyecto.plan_analisis, plan_talento_humano: @identificacion_proyecto.plan_talento_humano, plan_vinculo_docente: @identificacion_proyecto.plan_vinculo_docente, resumen: @identificacion_proyecto.resumen, titulo: @identificacion_proyecto.titulo }
    assert_redirected_to identificacion_proyecto_path(assigns(:identificacion_proyecto))
  end

  test "should destroy identificacion_proyecto" do
    assert_difference('IdentificacionProyecto.count', -1) do
      delete :destroy, id: @identificacion_proyecto
    end

    assert_redirected_to identificacion_proyectos_path
  end
end
