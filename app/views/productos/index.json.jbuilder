json.array!(@productos) do |producto|
  json.extract! producto, :id, :marca, :talla, :referencia, :color, :stock, :descripcion, :costo, :precio
  json.url producto_url(producto, format: :json)
end
