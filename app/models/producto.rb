class Producto < ActiveRecord::Base
	validates :marca, :talla, :referencia, :color, :stock, :descripcion, :costo, :precio, presence: true
	validates :talla, inclusion: { in: %w( s m l xl xxl ), message: "%{value} no es valido"}
	validates :marca, inclusion: { in:%w(adidas nike rebook), message: "%{value} no es valido"}
	validates :referencia, length: {is: 5}
	validates :color, exclusion: {in:%w( rojo verde ), message: "%{value} no es valido"}
	validates :stock, numericality: { only_integer: true}
	validates :descripcion, length: { maximum: 100}
	validates :costo, numericality: { greater_than: 0}
	validates :precio, numericality: { greater_than: 0}
end
