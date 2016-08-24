class CreatePresupuestos < ActiveRecord::Migration
  def change
    create_table :presupuestos do |t|
      t.integer :item
      t.string :descripcion
      t.string :unidad
      t.integer :cantidad
      t.money :costo_unitario
      t.money :costo_total
      t.money :costo_global

      t.timestamps null: false
    end
  end
end
