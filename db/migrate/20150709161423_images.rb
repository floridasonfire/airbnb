class Images < ActiveRecord::Migration
  def change
    create_table(:images) do |t|
      t.string :caption
    end
  end
  def up
    add_attachment :images, :avatar
  end

  def down
    remove_attachment :images, :avatar
  end
end
