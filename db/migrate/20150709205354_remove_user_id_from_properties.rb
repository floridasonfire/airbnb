class RemoveUserIdFromProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :user_id
    add_column :properties, :owner_id, :integer
  end
end
