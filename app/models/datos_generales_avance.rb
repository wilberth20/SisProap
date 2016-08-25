class DatosGeneralesAvance < ActiveRecord::Base
	belongs_to :identificacion_proyecto
	has_many :participantes_proyecto_avance
	has_many :monitoreo_talentoh_avance
	has_many :monitoreo_riesgos_avance
	has_many :control_entrega_avance
	has_many :monitoreo_vinculodocente_avance
	has_many :monitoreo_beneficio_avance
	has_many :publicaciones_planeadas_avance
	has_many :desarrollo_ejcucion_avance
	has_many :ciencia_tecnologia_avance
end
