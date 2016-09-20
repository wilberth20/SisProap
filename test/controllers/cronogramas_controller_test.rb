require 'test_helper'

class CronogramasControllerTest < ActionController::TestCase
  setup do
    @cronograma = cronogramas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cronogramas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cronograma" do
    assert_difference('Cronograma.count') do
      post :create, cronograma: { activi_relevante: @cronograma.activi_relevante, fecha_fin: @cronograma.fecha_fin, fecha_inicio: @cronograma.fecha_inicio, numero: @cronograma.numero, planVinculo_docente: @cronograma.planVinculo_docente, plan_talentoHumano: @cronograma.plan_talentoHumano }
    end

    assert_redirected_to cronograma_path(assigns(:cronograma))
  end

  test "should show cronograma" do
    get :show, id: @cronograma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cronograma
    assert_response :success
  end

  test "should update cronograma" do
    patch :update, id: @cronograma, cronograma: { activi_relevante: @cronograma.activi_relevante, fecha_fin: @cronograma.fecha_fin, fecha_inicio: @cronograma.fecha_inicio, numero: @cronograma.numero, planVinculo_docente: @cronograma.planVinculo_docente, plan_talentoHumano: @cronograma.plan_talentoHumano }
    assert_redirected_to cronograma_path(assigns(:cronograma))
  end

  test "should destroy cronograma" do
    assert_difference('Cronograma.count', -1) do
      delete :destroy, id: @cronograma
    end

    assert_redirected_to cronogramas_path
  end
end
