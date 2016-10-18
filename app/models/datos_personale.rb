class DatosPersonale < ActiveRecord::Base
	has_many :identificacion_proyectos#, :dependent => :destroy
	#accepts_nested_attributes_for :identificacion_proyectos , :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end



#class IdentificacionProyecto < ActiveRecord::Base
#	has_many :objetivo
#	has_one :presupuesto
#	has_one :metodologium
#	has_many :publicacion_esperada
#	has_one :cronograma
#	has_many :datos_generales_avance
    
#	belongs_to :datos_personale 

#end
