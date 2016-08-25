class CreateControlEntregaAvances < ActiveRecord::Migration
  def change
    create_table :control_entrega_avances do |t|
      t.integer :numero_informe
      t.date :fecha_limite
      t.date :fecha_entrega

      t.timestamps null: false
    end
  end
end
