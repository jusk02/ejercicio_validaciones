class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :cliente
      t.string :vendedor
      t.float :valor
      t.integer :num_productos
      t.float :descuento
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end
