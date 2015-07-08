class CreatePropertiesTable < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :details
      t.string :price
      t.integer :user_id

    end
  end
  
end
