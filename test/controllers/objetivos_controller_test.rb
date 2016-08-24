require 'test_helper'

class ObjetivosControllerTest < ActionController::TestCase
  setup do
    @objetivo = objetivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objetivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objetivo" do
    assert_difference('Objetivo.count') do
      post :create, objetivo: { objetivo_especifico: @objetivo.objetivo_especifico, objetivo_general: @objetivo.objetivo_general }
    end

    assert_redirected_to objetivo_path(assigns(:objetivo))
  end

  test "should show objetivo" do
    get :show, id: @objetivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @objetivo
    assert_response :success
  end

  test "should update objetivo" do
    patch :update, id: @objetivo, objetivo: { objetivo_especifico: @objetivo.objetivo_especifico, objetivo_general: @objetivo.objetivo_general }
    assert_redirected_to objetivo_path(assigns(:objetivo))
  end

  test "should destroy objetivo" do
    assert_difference('Objetivo.count', -1) do
      delete :destroy, id: @objetivo
    end

    assert_redirected_to objetivos_path
  end
end
