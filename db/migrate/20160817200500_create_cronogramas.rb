class CreateCronogramas < ActiveRecord::Migration
  def change
    create_table :cronogramas do |t|
      t.integer :numero
      t.string :actividad_relevante
      t.date :fecha_inicial
      t.date :fecha_final

      t.timestamps null: false
    end
  end
end
