class CreateMonitoreoTalentohAvances < ActiveRecord::Migration
  def change
    create_table :monitoreo_talentoh_avances do |t|
      t.string :nombre
      t.string :apellido
      t.string :nivel_academico
      t.string :titulo_trabajo
      t.string :facultad
      t.string :otra_info

      t.timestamps null: false
    end
  end
end
