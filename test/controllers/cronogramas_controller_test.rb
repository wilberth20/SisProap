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
      post :create, cronograma: { actividad_relevante: @cronograma.actividad_relevante, fecha_final: @cronograma.fecha_final, fecha_inicial: @cronograma.fecha_inicial, numero: @cronograma.numero }
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
    patch :update, id: @cronograma, cronograma: { actividad_relevante: @cronograma.actividad_relevante, fecha_final: @cronograma.fecha_final, fecha_inicial: @cronograma.fecha_inicial, numero: @cronograma.numero }
    assert_redirected_to cronograma_path(assigns(:cronograma))
  end

  test "should destroy cronograma" do
    assert_difference('Cronograma.count', -1) do
      delete :destroy, id: @cronograma
    end

    assert_redirected_to cronogramas_path
  end
end
