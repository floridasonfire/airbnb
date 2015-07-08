require 'rails_helper'

describe 'log in path' do
  it "logs a user in to the site" do
    user = FactoryGirl.create(:user)
    visit '/users/login'
    login_as(user, :scope => :user)
    click_button "Log in"
    expect(page).to have_content "newuser"
  end
end
