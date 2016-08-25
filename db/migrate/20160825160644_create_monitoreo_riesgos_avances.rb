class CreateMonitoreoRiesgosAvances < ActiveRecord::Migration
  def change
    create_table :monitoreo_riesgos_avances do |t|
      t.string :desc_riegos
      t.string :probab_ocurrencia
      t.string :acciones_mitigacion
      t.string :observaciones_adicionales
      t.string :informe_financiero

      t.timestamps null: false
    end
  end
end
