# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160826173538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string   "nombre_categoria"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "ciencia_tecnologia_avances", force: :cascade do |t|
    t.string   "nombre_act"
    t.string   "participantes"
    t.string   "tipo_act"
    t.string   "inst_nac_internac"
    t.string   "tipo_partiplanif"
    t.date     "fecha"
    t.string   "informe_avance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "control_entrega_avances", force: :cascade do |t|
    t.integer  "numero_informe"
    t.date     "fecha_limite"
    t.date     "fecha_entrega"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "cronogramas", force: :cascade do |t|
    t.integer  "numero"
    t.string   "actividad_relevante"
    t.date     "fecha_inicial"
    t.date     "fecha_final"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "datos_generales_avances", force: :cascade do |t|
    t.string   "nombre_inv"
    t.string   "apellido_inv"
    t.string   "categoria"
    t.string   "nombre_proyecto"
    t.string   "area_investigacion"
    t.string   "linea_investigacion"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "facultad"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "datos_personales", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "facultad"
    t.string   "departamento"
    t.string   "programa"
    t.integer  "telefono"
    t.integer  "celular"
    t.string   "email"
    t.string   "formacion_academica"
    t.string   "experiencia"
    t.string   "curriculum"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "desarrollo_ejcucion_avances", force: :cascade do |t|
    t.string   "obj_especifico"
    t.string   "resultados"
    t.string   "actv_desarrolladas"
    t.date     "fecha_estiamda"
    t.date     "fecha_real"
    t.string   "estado_avance"
    t.string   "dific_resolver"
    t.string   "actv_pendientes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "identificacion_proyectos", force: :cascade do |t|
    t.string   "titulo"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.integer  "duracion"
    t.string   "area_estrategica"
    t.string   "linea"
    t.string   "resumen"
    t.string   "definicion_problema"
    t.string   "justificacio"
    t.string   "fundamento_teorico"
    t.string   "plan_analisis"
    t.string   "conclucion"
    t.string   "plan_vinculo_docente"
    t.string   "plan_talento_humano"
    t.string   "contraparte_beneficio"
    t.string   "anexos"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "metodologia", force: :cascade do |t|
    t.string   "tipo_estudio"
    t.string   "proc_tratamiento"
    t.string   "proc_esteticos"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "monitoreo_beneficio_avances", force: :cascade do |t|
    t.string   "nombre_contacto"
    t.string   "apellido_contacto"
    t.string   "nombre_organizacion"
    t.string   "tipo_colaboracion"
    t.string   "compromiso_organizacion"
    t.string   "actv_realizadas"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "monitoreo_riesgos_avances", force: :cascade do |t|
    t.string   "desc_riegos"
    t.string   "probab_ocurrencia"
    t.string   "acciones_mitigacion"
    t.string   "observaciones_adicionales"
    t.string   "informe_financiero"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "monitoreo_talentoh_avances", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nivel_academico"
    t.string   "titulo_trabajo"
    t.string   "facultad"
    t.string   "otra_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "monitoreo_viculodocente_avances", force: :cascade do |t|
    t.string   "nombre_curso"
    t.string   "nivel_curso"
    t.string   "facultad"
    t.string   "semestre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "objetivos", force: :cascade do |t|
    t.string   "objetivo_general"
    t.string   "objetivo_especifico"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "participacines_acts", force: :cascade do |t|
    t.integer  "numero"
    t.string   "nombre_act"
    t.string   "tipo_act"
    t.string   "inst_naci_internaci"
    t.date     "fecha"
    t.string   "tipo_planific_planificada"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "participantes_proyecto_avances", force: :cascade do |t|
    t.string   "nombre_parti"
    t.string   "apellido_parti"
    t.string   "facultad"
    t.string   "cargo"
    t.string   "funciones_responsabilidades"
    t.string   "telefono"
    t.string   "correo"
    t.string   "resum_resultados"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "presupuestos", force: :cascade do |t|
    t.integer  "item"
    t.string   "descripcion"
    t.string   "unidad"
    t.integer  "cantidad"
    t.money    "costo_unitario", scale: 2
    t.money    "costo_total",    scale: 2
    t.money    "costo_global",   scale: 2
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "publicacion_esperadas", force: :cascade do |t|
    t.string   "titulo_publicacion"
    t.string   "revista_publicacion"
    t.string   "conferencia_sometera"
    t.date     "fecha_esperada"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "publicaciones_planeadas_avances", force: :cascade do |t|
    t.string   "titulo_preliminar"
    t.string   "revista_publicacion"
    t.string   "conferencia_publicacion"
    t.date     "fecha_publicacion"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
