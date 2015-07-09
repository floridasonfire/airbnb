class CreatePropertiesUsers < ActiveRecord::Migration
  def change
    create_table :properties_users do |t|
      t.integer :property_id
      t.integer :user_id
    end
  end
end
