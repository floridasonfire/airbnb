require 'rails_helper'

describe Property do
  it {should validate_presence_of :address}
  it {should validate_presence_of :details}
  it {should validate_presence_of :price}
  it {should validate_presence_of :avatar}
  it {should have_and_belong_to_many :users}
  it {should have_many :images}
end
