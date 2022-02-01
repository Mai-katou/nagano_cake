class AddCreatedAtToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :created_at, :datetime
  end
end
