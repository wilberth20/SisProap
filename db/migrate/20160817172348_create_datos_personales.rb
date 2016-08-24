class CreateDatosPersonales < ActiveRecord::Migration
  def change
    create_table :datos_personales do |t|
      t.string :nombre
      t.string :apellido
      t.string :facultad
      t.string :departamento
      t.string :programa
      t.integer :telefono
      t.integer :celular
      t.string :email
      t.string :formacion_academica
      t.string :experiencia
      t.string :curriculum

      t.timestamps null: false
    end
  end
end
