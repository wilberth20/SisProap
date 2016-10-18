class CreateIdentificacionProyectos < ActiveRecord::Migration
  def change
    create_table :identificacion_proyectos do |t|
      t.string :titulo
      t.date :fecha_inicio
      t.date :fecha_fin
      t.integer :duracion
      t.string :area_estrategica
      t.string :linea
      t.string :resumen
      t.string :definicion_problema
      t.string :justificacio
      t.string :fundamento_teorico
      t.string :plan_analisis
      t.string :conclucion
      t.string :plan_vinculo_docente
      t.string :plan_talento_humano
      t.string :contraparte_beneficio
      t.string :anexos
      t.references :datos_personale, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
