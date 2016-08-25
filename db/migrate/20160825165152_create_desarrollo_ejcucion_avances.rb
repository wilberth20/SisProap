class CreateDesarrolloEjcucionAvances < ActiveRecord::Migration
  def change
    create_table :desarrollo_ejcucion_avances do |t|
      t.string :obj_especifico
      t.string :resultados
      t.string :actv_desarrolladas
      t.date :fecha_estiamda
      t.date :fecha_real
      t.string :estado_avance
      t.string :dific_resolver
      t.string :actv_pendientes

      t.timestamps null: false
    end
  end
end
