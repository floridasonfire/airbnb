class Property < ActiveRecord::Base
  belongs_to :user

  validates :avatar_file_name, :presence => true
  validates :address, :presence => true
  validates :details, :presence => true
  validates :price, :presence => true
  validates :user_id, :presence => true

end
