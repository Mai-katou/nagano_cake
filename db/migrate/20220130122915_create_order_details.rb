class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :price
      t.integer :quantity
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
