require 'test_helper'

class MetodologiaControllerTest < ActionController::TestCase
  setup do
    @metodologium = metodologia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metodologia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metodologium" do
    assert_difference('Metodologium.count') do
      post :create, metodologium: { conclucion: @metodologium.conclucion, plan_analisis: @metodologium.plan_analisis, proc_esticos: @metodologium.proc_esticos, proc_tratamiento: @metodologium.proc_tratamiento, tipo_estudio: @metodologium.tipo_estudio }
    end

    assert_redirected_to metodologium_path(assigns(:metodologium))
  end

  test "should show metodologium" do
    get :show, id: @metodologium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metodologium
    assert_response :success
  end

  test "should update metodologium" do
    patch :update, id: @metodologium, metodologium: { conclucion: @metodologium.conclucion, plan_analisis: @metodologium.plan_analisis, proc_esticos: @metodologium.proc_esticos, proc_tratamiento: @metodologium.proc_tratamiento, tipo_estudio: @metodologium.tipo_estudio }
    assert_redirected_to metodologium_path(assigns(:metodologium))
  end

  test "should destroy metodologium" do
    assert_difference('Metodologium.count', -1) do
      delete :destroy, id: @metodologium
    end

    assert_redirected_to metodologia_path
  end
end
