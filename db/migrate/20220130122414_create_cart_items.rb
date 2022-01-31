class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.integer :amount
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
