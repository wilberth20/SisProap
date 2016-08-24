class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nombre_categoria

      t.timestamps null: false
    end
  end
end
