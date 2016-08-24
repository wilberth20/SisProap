class CreateMetodologia < ActiveRecord::Migration
  def change
    create_table :metodologia do |t|
      t.string :tipo_estudio
      t.string :proc_tratamiento
      t.string :proc_esteticos

      t.timestamps null: false
    end
  end
end
