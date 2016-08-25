class CreateParticipantesProyectoAvances < ActiveRecord::Migration
  def change
    create_table :participantes_proyecto_avances do |t|
      t.string :nombre_parti
      t.string :apellido_parti
      t.string :facultad
      t.string :cargo
      t.string :funciones_responsabilidades
      t.string :telefono
      t.string :correo
      t.string :resum_resultados

      t.timestamps null: false
    end
  end
end
