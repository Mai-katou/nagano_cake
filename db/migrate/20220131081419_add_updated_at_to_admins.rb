class AddUpdatedAtToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :updated_at, :datetime
  end
end
