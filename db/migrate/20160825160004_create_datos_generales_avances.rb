class CreateDatosGeneralesAvances < ActiveRecord::Migration
  def change
    create_table :datos_generales_avances do |t|
      t.string :nombre_inv
      t.string :apellido_inv
      t.string :categoria
      t.string :nombre_proyecto
      t.string :area_investigacion
      t.string :linea_investigacion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :facultad

      t.timestamps null: false
    end
  end
end
