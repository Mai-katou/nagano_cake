class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.integer :postage, null: false
      t.integer :subtotal, null: false
      t.integer :payment_method, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.integer :customer_id, null: false
    end
  end
end
