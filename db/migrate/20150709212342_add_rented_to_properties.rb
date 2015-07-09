class AddRentedToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :available, :boolean
  end
end
