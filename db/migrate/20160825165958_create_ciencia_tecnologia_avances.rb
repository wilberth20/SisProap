class CreateCienciaTecnologiaAvances < ActiveRecord::Migration
  def change
    create_table :ciencia_tecnologia_avances do |t|
      t.string :nombre_act
      t.string :participantes
      t.string :tipo_act
      t.string :inst_nac_internac
      t.string :tipo_partiplanif
      t.date :fecha
      t.string :informe_avance

      t.timestamps null: false
    end
  end
end
