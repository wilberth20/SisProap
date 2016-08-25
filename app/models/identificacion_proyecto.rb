class IdentificacionProyecto < ActiveRecord::Base
	has_many :objetivo
	has_one :presupuesto
	has_one :metodologium
	has_many :publicacion_esperada
	has_one :cronograma
	has_many :participacines_act
	has_many :datos_generales_avance

	belongs_to :datos_personale
end
