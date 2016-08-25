class CreateMonitoreoViculodocenteAvances < ActiveRecord::Migration
  def change
    create_table :monitoreo_viculodocente_avances do |t|
      t.string :nombre_curso
      t.string :nivel_curso
      t.string :facultad
      t.string :semestre

      t.timestamps null: false
    end
  end
end
