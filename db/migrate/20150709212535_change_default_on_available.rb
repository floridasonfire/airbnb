class ChangeDefaultOnAvailable < ActiveRecord::Migration
  def change
    change_column :properties, :available, :boolean, :default => true

  end
end
