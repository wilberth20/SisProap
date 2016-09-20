class CreateCronogramas < ActiveRecord::Migration
  def change
    create_table :cronogramas do |t|
      t.integer :numero
      t.string :activi_relevante
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :planVinculo_docente
      t.string :plan_talentoHumano

      t.timestamps null: false
    end
  end
end
