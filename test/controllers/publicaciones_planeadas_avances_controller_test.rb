require 'test_helper'

class PublicacionesPlaneadasAvancesControllerTest < ActionController::TestCase
  setup do
    @publicaciones_planeadas_avance = publicaciones_planeadas_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publicaciones_planeadas_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publicaciones_planeadas_avance" do
    assert_difference('PublicacionesPlaneadasAvance.count') do
      post :create, publicaciones_planeadas_avance: { conferencia_publicacion: @publicaciones_planeadas_avance.conferencia_publicacion, fecha_publicacion: @publicaciones_planeadas_avance.fecha_publicacion, revista_publicacion: @publicaciones_planeadas_avance.revista_publicacion, titulo_preliminar: @publicaciones_planeadas_avance.titulo_preliminar }
    end

    assert_redirected_to publicaciones_planeadas_avance_path(assigns(:publicaciones_planeadas_avance))
  end

  test "should show publicaciones_planeadas_avance" do
    get :show, id: @publicaciones_planeadas_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publicaciones_planeadas_avance
    assert_response :success
  end

  test "should update publicaciones_planeadas_avance" do
    patch :update, id: @publicaciones_planeadas_avance, publicaciones_planeadas_avance: { conferencia_publicacion: @publicaciones_planeadas_avance.conferencia_publicacion, fecha_publicacion: @publicaciones_planeadas_avance.fecha_publicacion, revista_publicacion: @publicaciones_planeadas_avance.revista_publicacion, titulo_preliminar: @publicaciones_planeadas_avance.titulo_preliminar }
    assert_redirected_to publicaciones_planeadas_avance_path(assigns(:publicaciones_planeadas_avance))
  end

  test "should destroy publicaciones_planeadas_avance" do
    assert_difference('PublicacionesPlaneadasAvance.count', -1) do
      delete :destroy, id: @publicaciones_planeadas_avance
    end

    assert_redirected_to publicaciones_planeadas_avances_path
  end
end
