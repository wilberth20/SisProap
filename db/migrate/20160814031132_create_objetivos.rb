class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
      t.string :objetivo_general
      t.string :objetivo_especifico

      t.timestamps null: false
    end
  end
end
