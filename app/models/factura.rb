class Factura < ActiveRecord::Base

	validates :cliente, :vendedor, :valor, :num_productos, :fecha, presence: true
	validates :cliente, length: { in: 2..50}
	validates :vendedor, length: { in: 2..50}
	validates :valor, numericality: {greater_than: 0}
	validates :num_productos, numericality: {greater_than: 0}
	validates :descuento, numericality: { less_than: :valor, message: "el descuento no puede ser mayor al valor de la compra"}
	validate :fecha_cannot_be_in_the_past

	def fecha_cannot_be_in_the_past
		if fecha < Date.today
			
			errors.add(:fecha, "no puede estar en el pasado")
		end
	end

end

