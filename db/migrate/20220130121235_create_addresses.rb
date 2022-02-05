class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :name, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.integer :customer_id, null:false
    end
  end
end
