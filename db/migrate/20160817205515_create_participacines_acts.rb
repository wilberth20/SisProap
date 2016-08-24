class CreateParticipacinesActs < ActiveRecord::Migration
  def change
    create_table :participacines_acts do |t|
      t.integer :numero
      t.string :nombre_act
      t.string :tipo_act
      t.string :inst_naci_internaci
      t.date :fecha
      t.string :tipo_planific_planificada

      t.timestamps null: false
    end
  end
end
