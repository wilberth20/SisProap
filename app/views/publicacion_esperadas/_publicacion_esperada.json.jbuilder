json.extract! publicacion_esperada, :id, :titulo_publicacion, :revista_publicacion, :conferencia_sometera, :fecha_esperada, :created_at, :updated_at
json.url publicacion_esperada_url(publicacion_esperada, format: :json)