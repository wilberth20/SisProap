class CreateParticipacionesActs < ActiveRecord::Migration
  def change
    create_table :participaciones_acts do |t|
      t.integer :numero
      t.string :nombre_act
      t.string :tipo_act
      t.string :inst_nac_internac
      t.date :fecha
      t.string :tipo_planif
      t.string :contraparte_beneficio

      t.timestamps null: false
    end
  end
end
