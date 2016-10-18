class IdentificacionProyecto < ActiveRecord::Base
  belongs_to :datos_personale
  has_many :objetivo
  has_one :presupuesto
  has_one :metodologium
  has_many :publicacion_esperada
  has_one :cronograma
  has_many :datos_generales_avance
end
