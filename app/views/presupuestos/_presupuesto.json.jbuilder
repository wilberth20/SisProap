json.extract! presupuesto, :id, :item, :descripcion, :unidad, :cantidad, :costo_unitario, :costo_total, :costo_global, :created_at, :updated_at
json.url presupuesto_url(presupuesto, format: :json)