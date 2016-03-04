json.array!(@facturas) do |factura|
  json.extract! factura, :id, :cliente, :vendedor, :valor, :num_productos, :descuento, :fecha
  json.url factura_url(factura, format: :json)
end
