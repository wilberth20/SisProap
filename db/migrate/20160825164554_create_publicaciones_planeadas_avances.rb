class CreatePublicacionesPlaneadasAvances < ActiveRecord::Migration
  def change
    create_table :publicaciones_planeadas_avances do |t|
      t.string :titulo_preliminar
      t.string :revista_publicacion
      t.string :conferencia_publicacion
      t.date :fecha_publicacion

      t.timestamps null: false
    end
  end
end
