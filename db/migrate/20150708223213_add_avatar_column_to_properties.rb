class AddAvatarColumnToProperties < ActiveRecord::Migration
  def up
    add_attachment :properties, :avatar
  end

  def down
    remove_attachment :properties, :avatar
  end
end
