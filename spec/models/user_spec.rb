require 'rails_helper'

describe User do
  it {should have_and_belong_to_many :properties}

  it 'will have an admin column set to false' do
    user = FactoryGirl.create(:user)
    expect(user.admin).to eq(false)
  end

  it 'will specify admins if admin is true' do
    user = FactoryGirl.create(:user, :admin => true)
    expect(user.admin).to eq(true)
  end
end
