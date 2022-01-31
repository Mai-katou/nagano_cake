class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :postage
      t.integer :subtotal
      t.integer :payment_method
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
