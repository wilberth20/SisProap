class CreateMonitoreoBeneficioAvances < ActiveRecord::Migration
  def change
    create_table :monitoreo_beneficio_avances do |t|
      t.string :nombre_contacto
      t.string :apellido_contacto
      t.string :nombre_organizacion
      t.string :tipo_colaboracion
      t.string :compromiso_organizacion
      t.string :actv_realizadas

      t.timestamps null: false
    end
  end
end
