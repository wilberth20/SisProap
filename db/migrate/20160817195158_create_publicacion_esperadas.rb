class CreatePublicacionEsperadas < ActiveRecord::Migration
  def change
    create_table :publicacion_esperadas do |t|
      t.string :titulo_publicacion
      t.string :revista_publicacion
      t.string :conferencia_sometera
      t.date :fecha_esperada

      t.timestamps null: false
    end
  end
end
